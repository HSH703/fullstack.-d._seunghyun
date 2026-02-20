package com.thejoa703.external;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlElementWrapper;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;

@Service
public class NaverBookXmlService {

	@JsonIgnoreProperties(ignoreUnknown = true)
	static class Channel { // static : Dto로 다 따로 만들어줘야함.
		@JacksonXmlProperty(localName = "item") // 태그
		@JacksonXmlElementWrapper(useWrapping = false) // items들을 묶어서 wrapping 태그없 <item></item> <item></item>
		private List<BookDto> items;

		public List<BookDto> getItems() {
			return items;
		}

		public void setItems(List<BookDto> items) {
			this.items = items;
		}

	}

	@JsonIgnoreProperties(ignoreUnknown = true)  //정의되지 않는 데이터가져오기
	static class Rss {
		@JacksonXmlProperty(localName = "channel")
		private Channel channel;

		public Channel getChannel() {
			return channel;
		}

		public void setChannel(Channel channel) {
			this.channel = channel;
		}
	}

	////////////////////////////////////////////////////////////////////////
	// Dao 가져오기 ##
	public List<BookDto> getBooks(String query) throws UnsupportedEncodingException {
		RestTemplate restTemplate = new RestTemplate();
		XmlMapper xmlMapper = new XmlMapper(); // ###

		String clientId = "s1pgEViWeKgNT0Kt_d9G"; // clientId ${NAVER_CLIENT_ID}
		String clientSecret = "rNcKxjYMHM"; // clientSecret ${NAVER_CLIENT_SECRET}
		String param = "?query=" + URLEncoder.encode(query, "UTF-8");
		String url = "https://openapi.naver.com/v1/search/book.xml" + param; // ####

		HttpHeaders headers = new HttpHeaders();
		headers.set("X-Naver-Client-Id", clientId);
		headers.set("X-Naver-Client-Secret", clientSecret);
		headers.set("Accept", "application/xml"); // ####

		HttpEntity<String> entity = new HttpEntity<>(null, headers);
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
		////////////////////////////////////////////////////////
		try {
			// xml응답을 Rss → Channel → item 구조로 피싱
			Rss rss = xmlMapper.readValue(response.getBody(), Rss.class);
			return rss.getChannel().getItems(); // List<BookDtos> 컬렉션프레임워크
		} catch (Exception e) {
			throw new RuntimeException("xml피싱오류", e);
		}

	}
}

/*
 * curl
 * "https://openapi.naver.com/v1/search/book.xml?query=%EC%A3%BC%EC%8B%9D&display=10&start=1"
 * \ -H "X-Naver-Client-Id: {애플리케이션 등록 시 발급받은 클라이언트 아이디 값}" \ -H
 * "X-Naver-Client-Secret: {애플리케이션 등록 시 발급받은 클라이언트 시크릿 값}" -v
 */
