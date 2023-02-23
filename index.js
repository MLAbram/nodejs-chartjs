const express = require('express');
const app = express();
const dotenv = require('dotenv');
const pool = require('./routes/pg_db');
const path = require('path');
const hbs = require('hbs');
const HTMLFolder = path.join(__dirname, './html');
const v1_charts = require('./routes/v1_charts');
const v1_dashboard = require('./routes/v1_dashboard');

const debug_code = 0;  // 0 = False, 1 = True

hbs.registerPartials(path.join(__dirname, './views'));

app.set('view engine', 'hbs');

app.use(express.static(HTMLFolder));
app.use(express.urlencoded({extended:false}));
app.use('/api/v1', v1_charts);
app.use('/api/v1/dashboard', v1_dashboard);

// home page
app.get('/', (req, res) => {
  res.render('index');
});

app.get('/v1_charts1', (req, res) => {
  res.render('v1_charts1');
});

app.get('/v1_charts2', (req, res) => {
  pool.query('select domain_t, count(domain_t) cnt from chatbot.activity group by domain_t order by domain_t;', (error, result) => {
    if (error) {
      if (debug_code == 0) {
        return res.status(400).send('Invalid Credentials...');
      } else {
        return res.status(400).send('Line: 37\n' + error);
      }
    } else {
      if (result.rowCount > 0) {
        const sqlResults = [];
        sqlResults.push(result.rows);
        
        res.render('v1_charts2', {sqlResults: sqlResults});
      } else {
        if (debug_code == 0) {
          return res.status(400).send('Invalid Credentials...');
        } else {
          return res.status(400).send('Line: 46\n' + error);
        }
      }
    }
  });
});

app.listen(3000, () => {
  console.log('Server listening on port: 3000.');
});