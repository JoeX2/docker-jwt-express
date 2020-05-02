#!/usr/bin/env bash

if [[ ! -x /jwtToken-react-express/server/.env ]]
then 
  ln -s /config/jwt-server.env /jwtToken-react-express/server/.env 
fi

exec "$@"
