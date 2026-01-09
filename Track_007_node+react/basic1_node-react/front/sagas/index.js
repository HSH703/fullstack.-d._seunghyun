/**
 * saga/index.js
 * -----------------------------------------------
 * ✅ 루트 사가(rootSaga) 설정파일
 *  - 모든 개별 saga(userSage 등)를 합쳐서 실행
 *  - Redux-Saga의  all, fork를 사용해 병렬 실행
 */
import {all, fork} from 'redux-saga/effects'; // ✅ 여러 saga를 동시에 실행하기 위한 함수
import userSaga from './user';                // ✅ 사용자 관련 saga

// ✅ 루트 사가 생성
export default function* rootSaga(){
    yield all([
        fork(userSaga) , // ✅ userSaga를 병렬 실행
        //fork(userPost) 

    ]); // [] 여러개 동시 실행(배열) 
}


