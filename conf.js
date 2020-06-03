require("dotenv").config();
module.exports = {
  backendPort: process.env.BACKEND_PORT || "4242",
};
