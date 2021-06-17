#!/bin/bash

# ensure the graffiti watcher is running
if [[ ! `pidof -sx npa_rainbow_wall  ` ]]; then
  nohup ./npa_rainbow_wall >> runlog 2>>runerr &
  echo "starting rainbowwall"
else
  echo "rainbowwall server has already been started"
fi

