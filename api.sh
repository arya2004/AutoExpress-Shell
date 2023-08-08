#!/bin/bash

source ./folders.sh
source ./npm.sh
source ./cat.sh
source ./mongo.sh


create_express_api() {
  echo "Creating Express API starter project..."
    read -p "Enter your project name: " project_name

 
  if [ -z "$project_name" ]; then
    echo "Error: Project name cannot be empty."
    exit 1
  fi


  mkdir "$project_name"
  cd "$project_name"
  mkdir server
  cd server

  #npm_install
  install_dependencies yarn
  create_MVC
  create_files
  create_git_ignore
  readme
  index
  connectionString



  catto

  echo "Express API starter project created successfully."
  echo "To start the server, run 'node index.js'."
}


create_express_api
