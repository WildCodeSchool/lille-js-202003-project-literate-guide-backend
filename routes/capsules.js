const express = require("express");
const router = express.Router();

const capsulesController = require("../controllers/capsules");

// Get some infos from all capsules
router.get("/test", capsulesController.getSimpleCapsules);

module.exports = router;
