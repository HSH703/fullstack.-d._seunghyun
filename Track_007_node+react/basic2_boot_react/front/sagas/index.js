// sagas/index.js

import { all, fork } from 'redux-saga/effects';

import authSaga    from './authSaga';
// import poatSaga    from './poatSaga';
// import commentSaga from './commentSaga';
// import followSaga  from './followSaga';
// import likeSaga    from './likeSaga';
// import retweetSaga from './retweet';

export default function * rootSaga(){
    yield all([
        fork( authSaga ),
        // fork( poatSaga ),
        // fork( commentSaga ),
        // fork( followSaga ),
        // fork( likeSaga ),
        // fork( retweetSaga ),
    ]);
}
