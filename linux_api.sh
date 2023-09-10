#!/bin/bash

. ./folders.sh
. ./npm.sh
. ./cat.sh
. ./mongo.sh 


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


  install_dependencies yarn
  #create_MVC
  create_folders
  create_files
  create_git_ignore
  readme
  index
  mongo_connection_string mongodb://localhost:27017/$project_name
  basic_model

  clear
  catto

  echo "Express API starter project created successfully."
  echo "To start the server, run 'node index.js'."
}


create_express_api
