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
// const { handlebars } = require('hbs');

const debug_code = 0;  // 0 = False, 1 = True

// hbs.registerPartials(path.join(__dirname, './views'));
hbs.registerPartials(__dirname + '/views', function (err) {});
hbs.registerHelper('dateFormat', require('handlebars-dateformat'));

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
  pool.query("select json_build_object('month_dt', json_agg(month_dt), 'location_t', json_agg(location_t), 'sales_n', json_agg(sales_n)) from demos.sales where extract(year from month_dt) = 2000;", (error, result) => {
    if (error) {
      if (debug_code == 0) {
        return res.status(400).send('Invalid Credentials...');
      } else {
        return res.status(400).send('Line: 63<br>>' + error);
      }
    } else {
      if (result.rowCount > 0) {
        var dataMonth = [];
        var dataLocation = [];
        var dataSales = [];
        
        dataMonth = result.rows[0].json_build_object.month_dt;
        dataLocation = result.rows[0].json_build_object.location_t;
        dataSales = result.rows[0].json_build_object.sales_n;
        
        res.render('chart3', {dataMonth: dataMonth, dataLocation: dataLocation, dataSales: dataSales});
      } else {
        if (debug_code == 0) {
          return res.status(400).send('Invalid Credentials...');
        } else {
          return res.status(400).send('Line: 72<br>' + error);
        }
      }
    }
  });
});

app.listen(3000, () => {
  console.log('Server listening on port: 3000.');
});