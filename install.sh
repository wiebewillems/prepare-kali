# Preparing all .sh scripts to be able to get executed
find ./ -type f -iname "*.sh" -exec chmod +x {} \;

# Install Terminator
./terminator/install.sh
