// This app runs a basic Express server that responds with a simple greeting
const express = require('express');
const app = express();
const PORT = 3000;
// test
app.get('/', (req, res) => {
  res.send('Hello from DevOps Test!');
  console.log('Request received on /');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
