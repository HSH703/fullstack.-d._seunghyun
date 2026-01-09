//pages/index.js

import { useEffect } from 'react';        // 특정 동작 실행할때에 가져오기
import { useRouter } from 'next/router';  // 이동하기



export default function Home(){
    const router = useRouter();  //이동하기
    useEffect(()=>{     // 특정 동작
        router.replace('/users');  // 현재경로를 /users로 바꾸기 (뒤로가기 남지 않음(동작 X) )
    } , [router]);  // router라는 객체가 변경시 useEffect 실행
    return null;
}

// npm run dev (프로젝트 진행할때에는 npm run start로 실행)


