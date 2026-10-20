#!/usr/bin/env bash
N=30

OUT_FILE="output.log"

if [ -f "$OUT_FILE" ] && [ ! -w "$OUT_FILE" ]; then
	echo "Ошибка: нет прав на запись в файл" >&2
	exit 1
fi


trap 'echo -e "\n--- $(date +"%Y-%m-%d %H:%M:%S") [Script stopped by user] ---\n" >> "$OUT_FILE"; exit 0' INT TERM

while true; do
	CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")
	{
		echo "--- $CURRENT_TIME ---"
		echo ""
		echo "RAM usage:"
	       	free -h
		echo ""
		echo "Filesystem:" 
		df -h 
		echo ""
		echo "Working time and CPU payload: "
	       	uptime
		echo ""
		echo ""
	} >> "$OUT_FILE"	
	sleep "$N"
	
done
