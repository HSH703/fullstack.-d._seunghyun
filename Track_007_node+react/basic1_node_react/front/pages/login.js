import { useDispatch  , useSelector } from 'react-redux';  // 액션 발생, redux store에서 사용자상태 가져옴.
import { useState , useEffect } from 'react';  // 특정이벤트 - 상태
import { useRouter } from 'next/router';
import { LOG_IN_REQUEST } from '../reducers/user'; //로그인 액션


export default function LoginPage(){
    //코드
    const dispatch = useDispatch();
    const router   = useRouter();
    const { me, isLoading, error } =  useSelector( (state)=> state.user); //✅ user 상태조회

    //✅ 입력값 상태관리 (before 이벤트)
    const [email, setEmail] = useState('');  // 세트: email 변수 , setEmail 셋팅함수 
    const [password, setPassword] = useState('');
   
    const onSubmit = (e)=>{
        e.preventDefault();
            if(!email.trim()){
                console.log('이메일이 빈칸입니다.');
                alert('이메일을 입력해주세요');
                return;
            }
            
            if(!password.trim()){
                console.log('비밀번호가 빈칸입니다.');
                alert('비밀번호를 입력해주세요');
                return;
            }
        //✅ 로그인 요청 액션 dispatch (이벤트 발생)
        dispatch({ type: LOG_IN_REQUEST , data: {email, password} });
    };

    //✅ 로그인 성공시 사용자 목록페이지로 이동 (after 이벤트)
    useEffect( ()=>{
        if(me) router.push('/users');  // replace: 주소표시창줄바꿈, 히스토리에 추가X 
                                       // push   : 히스토리에 추가 O
    } , [me, router]);


    //렌더링(view)
    return (
    <div className="containe mt-4">
 
        <h2 className="mb-3">로그인</h2>

        {/* 로그인 폼 */}
        <form onSubmit={onSubmit}  className="w-50 mx-auto">
        {/* 이메일 입력  */}
        <div className="mb-3">
            <input type="email" className="form-control" value={email}
                   onChange={ (e)=>{setEmail(e.target.value); console.log('email>', e.target.value);} } placeholder="이메일" />
        </div>

        {/* 비밀번호 입력 */}
        <div className="mb-3">
            <input type="password" className="form-control" value={password}
                   onChange={ (e)=>{setPassword(e.target.value); console.log('password', e.target.value);} } placeholder="비밀번호" />
        </div>

        {/* 로그인 버튼 */}
        <button type="submit" className="btn btn-primary w-100" disabled={isLoading}>
            로그인
        </button>
          
        </form>

        {/* 에러 메시지 */}
        { error && <div className="alert alert-danger mt-3"> {error} </div>}
    </div>
    );
}

// 1. `useSelector`  → Redux store 에서 사용자 상태 가져오기
// 2. `userEffect`   → 로그인 여부 확인 및 사용자 목록 불러오기
// 3. `dispatch`     → 액션 발생을 감지 (로그인, 사용자 삭제,,,)
