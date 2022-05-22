const mongoose = require('mongoose')

const bookingSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },

    title: {
      type: String,
      required: true
    },
    description: {
      type: String,
      required: true
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User',
      required: true
    },
    date: {
      type: String,
      required: true
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Booking', bookingSchema)
