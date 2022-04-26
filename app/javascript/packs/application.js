// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// import "./posts"

Rails.start()
// Turbolinks.start()
ActiveStorage.start()


let nowTime = document.getElementById('time');


let now = new Date();
let Year = now.getFullYear();
let Month = now.getMonth() + 1;
let Day = now.getDate();

nowTime.textContent = `現在の日時:${Year}年${Month}月${Day}日`



let row = document.getElementById('rows');
let rowCount = row.rows.length
let rowCounts = document.getElementById('rowcount')
rowCounts.innerHTML = `スケジュール合計:${rowCount}`



