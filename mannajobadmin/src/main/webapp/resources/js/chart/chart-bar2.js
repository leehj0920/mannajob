// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}



////////////////////////////////////////////////////////////////////////////////////////////////////////
// 기업별 분석
var ctx = document.getElementById("companyChart");
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["1위", "2위", "3위", "4위", "5위"],
    datasets: [{
      label: "기업별분석",
      backgroundColor: "#f7ce53",
      hoverBackgroundColor: "#f7ba53",
      borderColor: "#f7ce53",
      data: [500, 400, 300, 200, 100],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'rank'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        scaleLabel: {
          display: true,
          // labelString: '순위',
          // fontColor: 'red'
        },
        ticks: {
          maxTicksLimit: 6
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 500,
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            //return '$' + number_format(value);
            return number_format(value) + '건';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        },
        scaleLabel: {
          display: true,
          // labelString: 'TEST',
          // fontColor: 'red'
        },
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          //return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '건';
        }
      }
    },
    title: {
      display: true,
      text: '기업별 분석'
    },
  }
});



////////////////////////////////////////////////////////////////////////////////////////////////////////
// 지역별 분석
var ctx = document.getElementById("locationChart");
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["1위", "2위", "3위", "4위", "5위"],
    datasets: [{
      label: "기업별분석",
      backgroundColor: "#f7ce53",
      hoverBackgroundColor: "#f7ba53",
      borderColor: "#f7ce53",
      data: [500, 400, 300, 200, 100],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'rank'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        scaleLabel: {
          display: true,
          // labelString: '순위',
          // fontColor: 'red'
        },
        ticks: {
          maxTicksLimit: 6
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 500,
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            //return '$' + number_format(value);
            return number_format(value) + '건';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        },
        scaleLabel: {
          display: true,
          // labelString: 'TEST',
          // fontColor: 'red'
        },
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          //return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '건';
        }
      }
    },
    title: {
      display: true,
      text: '지역별 분석'
    },
  }
});



////////////////////////////////////////////////////////////////////////////////////////////////////////
// 분야별 분석
var ctx = document.getElementById("fieldChart");
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["1위", "2위", "3위", "4위", "5위"],
    datasets: [{
      label: "기업별분석",
      backgroundColor: "#f7ce53",
      hoverBackgroundColor: "#f7ba53",
      borderColor: "#f7ce53",
      data: [500, 400, 300, 200, 100],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'rank'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        scaleLabel: {
          display: true,
          // labelString: '순위',
          // fontColor: 'red'
        },
        ticks: {
          maxTicksLimit: 6
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 500,
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            //return '$' + number_format(value);
            return number_format(value) + '건';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        },
        scaleLabel: {
          display: true,
          // labelString: 'TEST',
          // fontColor: 'red'
        },
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          //return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '건';
        }
      }
    },
    title: {
      display: true,
      text: '분야별 분석'
    },
  }
});
