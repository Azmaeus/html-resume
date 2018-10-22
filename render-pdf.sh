#! /bin/sh

npx http-server &
sleep 6;
chromium --headless --disable-gpu  --run-all-compositor-stages-before-draw --print-to-pdf="./John-Shaver-Resume-2018.pdf" http://localhost:8080/ --virtual-time-budget=10000;
kill %1;
exit;

