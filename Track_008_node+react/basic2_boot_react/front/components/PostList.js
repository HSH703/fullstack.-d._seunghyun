import {Card, List} from "antd";
import PostCard from "./PostCard";

/**  PostList 컴포넌트 - posts 배열 받아서 PostCard 리스트로 렌더링 */
export default function PostList({
    posts,
    user,
    likes,
    likesCount,
    retweetedPosts,
    retweetsCount,
    expandedPostId,
    setExpandedPostId,
    handleToggleLike,
    handleToggleFollow,
    handleEdit,
    dispatch,
    likeLoading,
    followingsMap,    
    followLoading,
    title="피드",
}){
    return <div style={{minHeight: "100vh" , padding: "30px 0"}}>
      <Card
        title={title}
        style={{
        maxWidth: 700,
        margin: "0 auto",
        borderRadius: "12px",
        boxShadow: "0 4px 12px rgba(0,0,0,0.1)",
        backgroundColor: "rgba(255,255,255,0.9)",
        }}
       >
            <List   itemLayout="vertical" 
                    dataSource={ posts || []} 
                    rowKey={ (post)=>post.id  }
                    renderItem={(post)=>(
                        <PostCard 
                            post={post}
                            user={user}
                            likes={likes}
                            likesCount={likesCount}
                            retweetedPosts={retweetedPosts}
                            retweetsCount={retweetsCount}
                            expandedPostId={expandedPostId}  //해당하는 번호
                            setExpandedPostId={setExpandedPostId}
                            handleToggleLike={handleToggleLike} // 좋아요 / 싫어요 토글버튼
                            handleToggleFollow={handleToggleFollow}
                            handleEdit={handleEdit}
                            dispatch={dispatch}
                            likeLoading={likeLoading}
                            followingsMap={followingsMap}    
                            followLoading={followLoading}                            
                        />
                    )}
            />
        </Card>
    </div>;
}
