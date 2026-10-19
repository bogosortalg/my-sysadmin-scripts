N=5

while true; do
	CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")
	{
		echo "--- $CURRENT_TIME ---"
		echo ""
		free -h
		echo ""
		df -h
		echo ""
		uptime
		echo ""
		echo ""
	}	
	sleep "$N"
	
done
