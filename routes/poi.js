const express = require("express");
const router = express.Router();

const poiController = require("../controllers/poi");

//Get all infos from all poi
router.get("/", poiController.getPoi);

module.exports = router;
