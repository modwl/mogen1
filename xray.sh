#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1edefa7c-6df2-48d1-8493-a15801025fca"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

