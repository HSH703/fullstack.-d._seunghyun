package com.thejoa703.external;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders; //##
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ApiChatGpt {
	
	@Value("${openai.api.key}")
	private String apiKey;
	
	private static final String API_URL="https://api.openai.com/v1/chat/completions";
	private final ObjectMapper objectMapper = new ObjectMapper();
	
	//이 일기를 이모티콘으로 요약해줘.
	public String getAIResponse(String userMessage) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/json");
		headers.set("Authorization", "Bearer " + apiKey); // ##Bearer → 공백주의!!
		
		Map<String, Object> body = new HashMap<>();
		body.put("model", "gpt-4");  
		body.put("messages", List.of(
				Map.of("role", "user", "content" , userMessage + "이 일기를 이모티콘으로 요약해줘.")	
		));  
		//org.springframework.http.HttpEntity;
		HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(body, headers);
		/////////////////////////////////////////////////////////////////////////////////
		
		// org.springframework.http.ResponseEntity;                          주소,    요청,           응답상태
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(API_URL, requestEntity, String.class);
		String responseBody = responseEntity.getBody();
		try {
			JsonNode root = objectMapper.readTree(responseBody);
			return root.path("choices").get(0).path("message").path("content").asText();  
		} catch (Exception e) {throw new RuntimeException("OpenAI 응답 피싱 오류", e);}
		
	}
}

// https://api.openai.com/v1/chat/completions
/* 응답형태

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "gpt-5.2",
    "messages": [
      {
        "role": "user",
        "content": "Hello!"
      }
    ],
    "logprobs": true,
    "top_logprobs": 2
  }'

{
  "id": "chatcmpl-B9MBs8CjcvOU2jLn4n570S5qMJKcT",
  "object": "chat.completion",
  "created": 1741569952,
  "model": "gpt-4.1-2025-04-14",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "Hello! How can I assist you today?",
        "refusal": null,
        "annotations": []
      },
      "logprobs": null,
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 19,
    "completion_tokens": 10,
    "total_tokens": 29,
    "prompt_tokens_details": {
      "cached_tokens": 0,
      "audio_tokens": 0
    },
    "completion_tokens_details": {
      "reasoning_tokens": 0,
      "audio_tokens": 0,
      "accepted_prediction_tokens": 0,
      "rejected_prediction_tokens": 0
    }
  },
  "service_tier": "default"
}

*/ 