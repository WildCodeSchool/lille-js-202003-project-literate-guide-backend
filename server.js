const express = require("express");
const app = express();
const { backendPort } = require("./conf");

app.use("/", (req, res) => {
  res.send("Welcome, stranger!");
});

app.listen(backendPort, () => {
  console.log(`API root available on http://localhost:${backendPort}`);
});
