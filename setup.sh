# Update your system
echo "Updating the OS system";
sudo apt update;
sudo apt upgrade;

# Download an install robot hat
echo "Installing robot hat";
cd /home/
mkdir pi
cd /home/pi/
git clone https://github.com/sunfounder/robot-hat.git
cd robot-hat
sudo python3 setup.py install

# Download and install vilib
echo "Instaling vilib"
cd /home/pi/
git clone https://github.com/sunfounder/vilib.git
cd vilib
sudo python3 install.py

# Download and install picar-x
echo "Installing picar-x"
cd /home/pi/
git clone -b v2.0 https://github.com/sunfounder/picar-x.git
cd picar-x
sudo python3 setup.py install

# Install i2samp
echo "Installing i2samp.sh"
cd /home/pi/picar-x
sudo bash i2samp.sh

# Get this is to be able to run imshow command via ssh on your rasberry pi when connected to a display
xhost +
