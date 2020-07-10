const express = require("express");
const router = express.Router();

const coursesController = require("../controllers/courses");

//Get all infos from all courses, including creator, poi, capsules and tags
router.get("/", coursesController.getCourses);

module.exports = router;
