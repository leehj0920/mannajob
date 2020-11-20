var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
var date = new Date();  // @param 전역 변수, today의 Date를 세어주는 역할

buildCalendar();

// 이전달
function nextCalendar() {
    this.today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
    buildCalendar();
}

// 다음달
function prevCalendar() {
    this.today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
    buildCalendar();
}

function buildCalendar() {
    var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
    var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

    var tbCalendar = document.querySelector(".scriptCalendar > tbody");

    document.getElementById("calYear").innerText = today.getFullYear();
    document.getElementById("calMonth").innerText = autoLeftPad((today.getMonth() + 1), 2);

    while(tbCalendar.rows.length > 0) {
        tbCalendar.deleteRow(tbCalendar.rows.length - 1);
    }

    var row = tbCalendar.insertRow();
    
    var dom = 1; // row 증가값

    var daysLength = (Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7) - doMonth.getDay();

    // 달력 출력
    for(var day = 1 - doMonth.getDay(); daysLength >= day; day++) {
        var column = row.insertCell();

        // 평일( 전월일과 익월일의 데이터 제외 )
        if(Math.sign(day) == 1 && lastDate.getDate() >= day) {
            column.innerText = autoLeftPad(day, 2); // 평일
            
            if(dom % 7 == 1) { // 일요일
                column.style.color = "#FF4D4D";
            }
            if(dom % 7 == 0) { // 토요일
                column.style.color = "#4D4DFF";
                row = tbCalendar.insertRow();   // 가로 행 한줄 추가
            }
        }
        dom++;
    }
}

// Month 두자릿수 변경
function autoLeftPad(num, digit) {
    if(String(num).length < digit) {
        num = new Array(digit - String(num).length + 1).join("0") + num;
    }
    return num;
}