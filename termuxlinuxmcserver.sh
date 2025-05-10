apt update -y
apt-get clean -y
apt-get install -y build-essential
apt-get install -y software-properties-common
add-apt-repository ppa:openjdk-r/ppa
apt-get update -y
apt-get install openjdk-8-jre -y
apt-get install openjdk-21-jdk -y
wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/133/downloads/paper-1.21.1-133.jar
chmod +x server.jar
java -jar server.jar
echo eula=true > eula.txt
touch start.sh
echo "java -Xms1536M -Xmx1536M -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar mcserver.jar nogui" > start.sh
echo "you can now start the server by bash start.sh."
echo "if you want to play with friends, use ngrok for it. Use the ARM64 Linux Build https://ngrok.com/download"
echo "do wget -O ngrok.tgz linkhere"
echo "then do tar zxvf ngrok.tgz."
echo "Then register for an account on ngrok, copy your authentication token, and run the command ./ngrok authtoken (authtoken from ngrok website)"
echo "once it is configured, do ./ngrok tcp 25565"
echo "Your Minecraft Server IP will be under forwarding. You may need to rotate your device to see the full link. for example, mine could be 8.tcp.us-cal-1.ngrok.io:12345, that's the public server IP. It will change if you close ngrok!"
read -n 1 -s -r -p "Press any key to continue"
