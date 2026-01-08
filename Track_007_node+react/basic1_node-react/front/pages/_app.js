// pages/_app.js
import 'bootstrap/dist/css/bootstrap.min.css'; // bootstrap CSS
import Layout from '../components/Layout';  // 공용 레이아웃 컴포넌트 / 일부분 입력 후 ctrl + space
import '../styles/globals.css';             // 글로벌 CSS

function MyApp( { Component, pageProps } ){  
      //현재 렌더링할 컴포넌트 , 해당페이지에 전달되는 초기 props
    return (
        <Layout>
            {/* 각 페이지 컴포넌트 */}
            <Component {...pageProps}/>
        </Layout>
    );
}
export default MyApp;
