pkg install openjdk-21
pkg install zlib
termux-setup-storage
cd /sdcard
mkdir minecraft-server
cd minecraft-server
wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/133/downloads/paper-1.21.1-133.jar
java -jar paper-1.21.1-133.jar
echo eula=true > /sdcard/minecraft-server/eula.txt
touch /sdcard/start.sh 
echo "cd /sdcard/minecraft-server && java -Xms1536M -Xmx1536M -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar /sdcard/minecraft-server/paper-1.21.1-133.jar" > /sdcard/start.sh
echo "you can now go to /sdcard and then start the start.sh script using bash."
read -n 1 -s -r -p "Press any key to continue"
