#!/bin/bash

connectionString()
{
        cat <<EOF > .env
MONGO_CONNECTION_STRING=
EOF

}