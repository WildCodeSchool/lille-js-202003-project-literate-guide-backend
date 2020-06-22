const express = require("express");
const app = express();
const { db, backendPort } = require("./conf");

app.use(express.json());
app.use("/capsules", require("./routes/capsules"));

app.listen(backendPort, () => {
  console.log(`API root available on http://localhost:${backendPort}`);
});
