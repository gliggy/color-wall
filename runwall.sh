#!/bin/bash

# ensure the graffiti watcher is running
if [[ ! `pidof -sx rainbow_wall  ` ]]; then
  nohup ./rainbow_wall >> runlog 2>>runerr &
  echo "starting rainbowwall"
else
  echo "rainbowwall server has already been started"
fi

