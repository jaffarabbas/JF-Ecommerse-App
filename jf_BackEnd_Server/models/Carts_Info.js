const mongoose = require("mongoose");

const CartSchema = new mongoose.Schema(
  {
    userId: { type: String, required: true },
    productsID: { type: String, required: true },
    color: { type: String, required: true },
    size: { type: String, required: true },

    quantity: { type: Number, required: true },
  },
  { timestamps: true }
);

module.exports = mongoose.model("CartInfo", CartSchema);
