const express = require('express');
const app = express();
const dotenv = require('dotenv');
const pool = require('./routes/pg_db');
const path = require('path');
const hbs = require('hbs');
const HTMLFolder = path.join(__dirname, './html');
const charts = require('./routes/charts');
const dashboard = require('./routes/dashboard');

const debug_code = 0;  // 0 = False, 1 = True

hbs.registerPartials(path.join(__dirname, './views'));

app.set('view engine', 'hbs');

app.use(express.static(HTMLFolder));
app.use(express.urlencoded({extended:false}));
app.use('/api/v1', charts);
app.use('/api/v1/dashboard', dashboard);

// home page
app.get('/', (req, res) => {
  res.render('index');
});

app.get('/chart1', (req, res) => {
  res.render('chart1');
});

app.get('/chart2', (req, res) => {
  pool.query('select domain_t, count(domain_t) cnt from chatbot.activity group by domain_t order by domain_t;', (error, results) => {
    if (error) {
      if (debug_code == 0) {
        return res.status(400).send('Invalid Credentials...');
      } else {
        return res.status(400).send('Line: 37\n' + error);
      }
    } else {
      if (results.rowCount > 0) {
        res.render('chart2', {results: results.rows});
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

app.listen(3000, () => {
  console.log('Server listening on port: 3000.');
});