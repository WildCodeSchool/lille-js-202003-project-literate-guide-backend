const express = require("express");
const router = express.Router();
const { db } = require("../conf");

router.get("/", (req, res) => {
  db.query("SELECT capsule_name, description FROM capsule", (err, results) => {
    if (err) {
      res.status(500).send("non");
      console.log(err.sql);
      console.log(err.message);
    } else {
      res.send(results);
    }
  });
});

module.exports = router;
