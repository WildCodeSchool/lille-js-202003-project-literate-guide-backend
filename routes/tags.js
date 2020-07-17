const express = require("express");
const router = express.Router();

const tagsController = require("../controllers/tags");

//Get some infos from all tags
router.get("/", tagsController.getTags);

module.exports = router;
