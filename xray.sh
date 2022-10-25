#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9479031d-140f-4f71-8ed7-f689cec567dc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

