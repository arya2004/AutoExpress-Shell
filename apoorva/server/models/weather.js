const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const weatherSchema = new Schema({
    Date:{
        type: Date,
        required: true
    },
    temperatureC:{
        type: Number,
        required: true,
        min: 0
    },
    temperatureF:{
        type: Number,
        required: true,
        default: 32 + (TemperatureC / 0.5556)
    },
    Summary:{
        type: String,
        required: false
    }
    

})

module.exports = mongoose.model("Weather", weatherSchema);
