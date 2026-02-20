
/**
 * passport/index.js
 * -----------------------
 * 로그인 :  [local.js] Passport localStrategy로 인증 후 세션(serializeUser)저장
 * 로그아웃 : Passport 세션기반으로 사용자 조회(deserializeUser) 후 세션종료
 */

const passport = require('passport');
const local    = require('./local');
const { findUserById } = require('../models/users');

module.exports = ()=>{
    // 로그인 성공시 사용자 PK를 세션에 저정
    passport.serializeUser(( user, done )=>{    // 로그인시 인증된 사용자 객체 정보, 콜백함수(어떻게 할게)
        done(null, user.APP_USER_ID);   // 에러, 세션에 저장할 값-번호 / 이메일X( 털릴수 도 있음.)
     });
    
    // 세션에 저장된 사용자 id로 db에서 사용자를 조회
    passport.deserializeUser( async(id, done)=>{    //id, 콜백함수(어떻게 처리됐어)
        try{
           const user = await findUserById(id);
           done(null, user);  //조회된 사용자 객체를 req.user에 저장
        }catch(error){
            console.error('deserializeUser Error', error);
            done(error);  //에러 발생시 인증 실패 처리
        }
    });
    local();    // localStrategy 등록
};


