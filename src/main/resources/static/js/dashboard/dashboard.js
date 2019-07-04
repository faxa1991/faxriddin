
(function( $ ) {

  'use strict';


  /*
  Flot: Real-Time
  */
  (function() {
    var data = [],
      totalPoints = 300;

    function getRandomData() {

      if (data.length > 0)
        data = data.slice(1);

      // Do a random walk
      while (data.length < totalPoints) {

        var prev = data.length > 0 ? data[data.length - 1] : 50,
          y = prev + Math.random() * 10 - 5;

        if (y < 0) {
          y = 0;
        } else if (y > 100) {
          y = 100;
        }

        data.push(y);
      }

      // Zip the generated y values with the x values
      var res = [];
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]])
      }

      return res;
    }

    var flotDashRealTime = $.plot('#flotDashRealTime', [getRandomData()], {
      colors: ['#8CC9E8'],
      series: {
        lines: {
          show: true,
          fill: true,
          lineWidth: 1,
          fillColor: {
            colors: [{
              opacity: 0.45
            }, {
              opacity: 0.45
            }]
          }
        },
        points: {
          show: false
        },
        shadowSize: 0
      },
      grid: {
        borderColor: 'rgba(0,0,0,0.1)',
        borderWidth: 1,
        labelMargin: 15,
        backgroundColor: 'transparent'
      },
      yaxis: {
        min: 0,
        max: 100,
        color: 'rgba(0,0,0,0.1)'
      },
      xaxis: {
        show: false
      }
    });

    function update() {

      
      $.ajax({
        url:localStorage.getItem("backend_url")+"/api/reports/v1/strata-connection-stat?size=300",
        method:"GET",
        contentType: "application/json",
        async:false,
        success:function(data){
          console.log(data);
          flotDashRealTime.setData([data]);
          flotDashRealTime.draw();
          
          //flotDashRealTime.setData([getRandomData()]);
        }
      });
      
      setTimeout(update, ($('html').hasClass( 'mobile-device' ) ? 1000 : 1000) );
      //console.log([getRandomData()]);
      

      // Since the axes don't change, we don't need to call plot.setupGrid()
      
    }

    update();
  })();

  /*
   * data counter
   */
  
  (function() {
    var data = [],
      totalPoints = 600;

    function getRandomData() {

      if (data.length > 0)
        data = data.slice(1);

      // Do a random walk
      while (data.length < totalPoints) {

        var prev = data.length > 0 ? data[data.length - 1] : 50,
          y = prev + Math.random() * 10 - 5;

        if (y < 0) {
          y = 0;
        } else if (y > 100) {
          y = 100;
        }

        data.push(y);
      }

      // Zip the generated y values with the x values
      var res = [];
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]])
      }

      return res;
    }

    var flotDashRealTime = $.plot('#datacounter', [getRandomData()], {
      colors: ['#8CC9E8'],
      series: {
        lines: {
          show: true,
          fill: true,
          lineWidth: 1,
          fillColor: {
            colors: [{
              opacity: 0.45
            }, {
              opacity: 0.45
            }]
          }
        },
        points: {
          show: false
        },
        shadowSize: 0
      },
      grid: {
        borderColor: 'rgba(0,0,0,0.1)',
        borderWidth: 1,
        labelMargin: 15,
        backgroundColor: 'transparent'
      },
      yaxis: {
        min: 0,
        max: 200,
        color: 'rgba(0,0,0,0.1)'
      },
      xaxis: {
        show: false
      }
    });

    function update() {


$.ajax({
        url:localStorage.getItem("backend_url")+"/api/reports/v1/transfer-stat?size=600",
        method:"GET",
        contentType: "application/json",
        async:false,
        success:function(data){
          console.log(data);
          flotDashRealTime.setData([data]);
          flotDashRealTime.draw();
          
          //flotDashRealTime.setData([getRandomData()]);
        }
      });
      
      setTimeout(update, ($('html').hasClass( 'mobile-device' ) ? 1000 : 1000) );
      //console.log([getRandomData()]);
      

      // Since the axes don't change, we don't need to call plot.setupGrid()
      
    }

    update();
  })();
  
  

  }).apply( this, [ jQuery ]);