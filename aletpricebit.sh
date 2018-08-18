#!/bin/bash
price=`curl -sSL https://coinbase.com/api/v1/prices/historical | head -n 1 | sed "s|^.*,|$|" | sed "s|\(\.[0-9]$\)|\10|"`
rondprice=${price%.*}
pricecoin=${rondprice:1}
echo $pricecoin
while true; do
  if [ $pricecoin -ge 6000 ]
  then
      notify-send $price
      cvlc /home/kia/Desktop/gilfoyle.mp3&
  fi
  sleep 5
done
