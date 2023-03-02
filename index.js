const express = require('express');
const app = express();
const dotenv = require('dotenv');
const pool = require('./routes/pg_db');
const path = require('path');
const hbs = require('hbs');
const HTMLFolder = path.join(__dirname, './html');
const charts = require('./routes/charts');
const dashboard = require('./routes/dashboard');
const Chart = require('chart.js');

const debug_code = 0;  // 0 = False, 1 = True

hbs.registerPartials(path.join(__dirname, './views'));

app.set('view engine', 'hbs');

app.use(express.static(HTMLFolder));
app.use(express.urlencoded({extended:false}));
app.use('/api/v1', charts);
app.use('/api/v1/dashboard', dashboard);  // create dashboard with 6-9 charts and have dynamic options (dropdown and radio buttons)

// home page
app.get('/', (req, res) => {
  res.render('index');
});

// chart.js script in handlebars
app.get('/chart1', (req, res) => {
  res.render('chart1');
});

// pull data from database and push to handlebars where chart.js script is located
app.get('/chart2', (req, res) => {
  pool.query('select state_t, count(*) cnt from demos.contacts group by state_t order by count(*) desc limit 10;', (error, result) => {
    if (error) {
      if (debug_code == 0) {
        return res.status(400).send('Invalid Credentials...');
      } else {
        return res.status(400).send('Line: 37\n' + error);
      }
    } else {
      if (result.rowCount > 0) {
        res.render('chart2', {result: result.rows});
      } else {
        if (debug_code == 0) {
          return res.status(400).send('Invalid Credentials...');
        } else {
          return res.status(400).send('Line: 49\n' + error);
        }
      }
    }
  });
});

// pull data from database, generate chart.js here and push to handlebars to be displayed
app.get('/chart3', (req, res) => {
  // setup block
  // const data = {
  //   labels: [
  //     'Red',
  //     'Blue',
  //     'Yellow'
  //   ],
  //   datasets: [{
  //     label: 'My First Dataset',
  //     data: [300, 50, 100],
  //     backgroundColor: [
  //       'rgb(255, 99, 132)',
  //       'rgb(54, 162, 235)',
  //       'rgb(255, 205, 86)'
  //     ],
  //     hoverOffset: 4
  //   }]
  // };

  // // config block
  // const config = {
  //   type: 'pie',
  //   data: data,
  // };

  // // render block
  // const chart3 = new Chart(
  //   'chart3',
  //   config
  // );

  res.render('chart3');
});

app.listen(3000, () => {
  console.log('Server listening on port: 3000.');
});