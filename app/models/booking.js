const mongoose = require('mongoose')

const bookingSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },
    date: {
      type: String,
      required: true
    },

    pledge: {
      type: String,
      required: true
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User',
      required: true
    }

  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Booking', bookingSchema)
