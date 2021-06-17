#!/bin/bash

# file to update the rainbow wall to say whether the server is running
# because we all know there's nothing more frustrating than a townie site that's unknown whether its broken or not!
ps aux | grep "rainbow_wall" && sed -E -i "s/(offline)|(online)/online/g" index.html || sed -E -i "s/(offline)|(online)/offline/g" index.html
ps aux | grep "rainbow_wall" && sed -E -i "s/(offline)|(online)/online/g" indextemplate.html || sed -E -i "s/(offline)|(online)/offline/g" indextemplate.html

