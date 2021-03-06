sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-lunar-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/lunar/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/lunar/setup.bash
echo "source /opt/ros/lunar/setup.zsh" >> ~/.zshrc
source ~/.zshrc
sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential