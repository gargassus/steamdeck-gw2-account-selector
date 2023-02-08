#!/bin/bash
set -e

if [ -z "$" ]; then
    EXSTRA_VARS=""
else
    # Extra command line arguments can be given
    EXSTRA_VARS="$1"
fi

# Run GW2 with portal provider so steam profile account wont be used and you will be able to log in with your
# existing account. We add any
steam steam://rungameid/1284210 -provider Portal "$EXSTRA_VARS"