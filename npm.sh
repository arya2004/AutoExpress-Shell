#!/bin/bash

npm_install()
{
    npm init -y
    npm install express
    npm install dotenv
    npm install cors
    npm install mongoose
    npm install express-rate-limit
    
    npm i eslint --save-dev 

}