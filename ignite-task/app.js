//To import the Express.js framework
const express = require('express');

//To create an Express application
const app = express();

//To define a route that responds with "Hello, World!" when accessed
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

//To set the port for the server to listen on (e.g., 3000)
const port = 3000;

//To start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

