N=30

OUT_FILE="output.log"

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
