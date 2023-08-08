#!/bin/bash

mongo_connection_string()
{
        cat <<EOF > .env
MONGO_CONNECTION_STRING=$1
EOF

}

mongoose_connection()
{
        tee -a app.js <<EOF
mongoose.connect(MONGO_CONNECTION_STRING, {
    useNewUrlParser: true,
    useCreateIndex: true,
    useUnifiedTopology: true,
    useFindAndModify: false
});

const db = mongoose.connection;
db.on("error", console.error.bind(console, "connection error:"));
db.once("open", () => {
    console.log("Database connected");
});
EOF

}

basic_model()
{
       touch models/weather.js

        tee -a models/weather.js <<EOF
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
EOF
}