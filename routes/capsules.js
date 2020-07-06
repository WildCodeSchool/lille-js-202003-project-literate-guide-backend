const express = require("express");
const router = express.Router();

const capsulesController = require("../controllers/capsules");

// Get some infos from all capsules
router.get("/test", capsulesController.getSimpleCapsules);

//Get all infos from all capsules with their poi
router.get("/", capsulesController.getCapsules);

module.exports = router;
