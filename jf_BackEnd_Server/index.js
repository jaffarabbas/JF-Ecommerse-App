const express = require("express");
const cors = require("cors");

const mongoose = require("mongoose");
const dotenv = require("dotenv");


const userRoute = require("./api_routes/UserInfo");
const authRoute = require("./api_routes/auth");
const productRoute = require("./api_routes/product");
const cartRoute = require("./api_routes/cart");


const app = express();
dotenv.config();

mongoose
  .connect(process.env.MONGODB_URL)
  .then(() => console.log("DB Connection Successfull!"))
  .catch((err) => {
    console.log(err);
  });

app.use(cors());
app.use(express.json());
app.use("/api/auth", authRoute);
app.use("/api/users", userRoute);
app.use("/api/products", productRoute);
app.use("/api/carts", cartRoute);

app.listen(process.env.PORT || 5000, () => {
  console.log("Backend server is running!");
});
