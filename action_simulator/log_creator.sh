#!/bin/bash

while true; do
    current_time=$(date +"%Y-%m-%d %H:%M:%S")
    client_ip="192.168.$((RANDOM%256)).$((RANDOM%256))"
    http_method=("GET" "POST" "PUT" "DELETE")
    status_code=("200" "404" "500")
    requested_path="/page$((RANDOM%10)).html"

    echo "$client_ip - - [$current_time] \"${http_method[RANDOM % ${#http_method[@]}]} $requested_path HTTP/1.1\" ${status_code[RANDOM % ${#status_code[@]}]}" >> /home/day9/openai/log.txt

    sleep 5  # Регулируйте интервал записи логов по желанию
done
