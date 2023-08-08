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

install_dependencies()
{
    pkgManager="$1"
    if [ "$pkgManager" = "npm" ]; then
        a="install"
    elif [ "$pkgManager" = "yarn" ]; then
        a="add"
    else
        echo "grrrr"
        exit 1
    fi
    
    $pkgManager init -y
    $pkgManager $a express
    $pkgManager $a dotenv
    $pkgManager $a cors
    $pkgManager $a mongoose
    $pkgManager $a express-rate-limit
    
}

