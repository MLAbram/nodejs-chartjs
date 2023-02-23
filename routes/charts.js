const express = require('express');
const app = express();

// home page
app.get('/', (req, res) => {
    res.send('REMINDER: provide links here to chart.js examples');
});

module.exports = app;