const express = require("express");
const router = express.Router();

const capsulesController = require("../controllers/capsules");

// Get some infos from all capsules
router.get("/test", capsulesController.getSimpleCapsules);

//Get all infos from all capsules with their poi, ratings and tags
router.get("/", capsulesController.getCapsules);

//Get all ratings (with all infos) for one capsule
router.get("/ratings/:id", capsulesController.getOneCapsuleRatings);

module.exports = router;
