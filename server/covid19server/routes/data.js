var express = require('express');
var router = express.Router();

const request = require("request");
const axios = require("axios");
const cheerio = require("cheerio");
const url = "http://ncov.mohw.go.kr/";
const log = console.log;

let dataString;


// ### 1. request 사용 ###

router.get('/', function(req, res, next) {
    request.post(url, function (err, res, body) { // 웹에 요청을 보내고, 요청에 해당하는 페이지를 가져오는 request 사용.

        const $ = cheerio.load(body) // 페이지를 파싱해 원하는 일부분을 가공하기위해 cheerio 모듈 사용. jquery 문법을 사용할 수 있어 편리하다.
        let parentTag = $("div.liveNum ul.liveNum li");

        let resultArr = [];
        parentTag.each(function(i, elem){
            let itemObj = { // 원하는대로 불러와 사용하기 편하게 객체에 저장.
                _text : $(this).find("strong").text(),
                _num :$(this).find("span").text()
            }
            resultArr.push(itemObj); // 긁어온 데이터를 itemObj 객체에 넣고 itemObj를 resultArr 배열에 push.
        })

        resultArr.forEach(elem => {
            log(`현재 ${elem._text}의 현황 : ${elem._num}`);
        })
    })
    res.send(dataString);
});

// request.post(url, function (err, res, body) { // 웹에 요청을 보내고, 요청에 해당하는 페이지를 가져오는 request 사용.
//
//     const $ = cheerio.load(body) // 페이지를 파싱해 원하는 일부분을 가공하기위해 cheerio 모듈 사용. jquery 문법을 사용할 수 있어 편리하다.
//     let parentTag = $("div.rssm_graph div#main_maplayout button");
//
//     let resultArr = [];
//     parentTag.each(function(i, elem){
//         let itemObj = { // 원하는대로 불러와 사용하기 편하게 객체에 저장.
//             _text : $(this).find("span").text(),
//             _num :$(this).find("span").text()
//         }
//         resultArr.push(itemObj); // 긁어온 데이터를 itemObj 객체에 넣고 itemObj를 resultArr 배열에 push.
//     })
//
//     resultArr.forEach(elem => {
//         log(`현재 ${elem._text}의 현황 : ${elem._num}`);
//     })
// })


module.exports = router;
