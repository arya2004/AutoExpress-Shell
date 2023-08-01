#!/bin/bash

source ./folders.sh
source ./npm.sh
source ./cat.sh

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

  npm_install
  create_folders
  create_files
  create_git_ignore
  readme
  index



  catto

  echo "Express API starter project created successfully."
  echo "To start the server, run 'node index.js'."
}


create_express_api
