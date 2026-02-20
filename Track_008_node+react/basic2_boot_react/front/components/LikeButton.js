import { Button, Spin } from "antd";
import { HeartOutlined, HeartFilled } from "@ant-design/icons";

export default function LikeButton( {
    postId,
    user,
    liked,
    likes,
    onToggleLike,
    loading,
}) { //상태표시 바꾸는 해보기(리듀서에서 가져와서~)
  return (
    <div style={{ textAlign: "center" }}>
      <Button
        type="text"
        onClick={() => onToggleLike(postId)}  
      >
        { loading? (
          <Spin size="small" />
        ) : liked ? (
          <HeartFilled style={{ fontSize: "20px", color: "red" }} />
        ) : (
          <HeartOutlined style={{ fontSize: "20px", color: "#555" }} />
        )}
        <div style={{ fontSize: "12px" }}>
          좋아요 {likes ?? 0}  
        </div>
      </Button>
    </div>
  );
}


