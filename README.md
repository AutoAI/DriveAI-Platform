![DriveAILogo](readme-assets/DriveAILogo.png)
# DriveAI Platform

DriveAI Platform is a project designed to bring together

* LIDAR
* Stereo Vision
* Vehicle Actuation

To create a fully autonomous vehicle.

## Architecture
The platform is built on top of the Robotic Operating System commonly known as ROS.
The following is our compartmentalization of our problem, in the form of different ROS Nodes.

* [Perception](https://github.com/DriveAI/Perception): Responsible for collecting raw data from our sensors. Performing object recognition, and giving said objects to the [Path-Planning](https://github.com/DriveAI/Path-Planning).
* [Navigation](https://github.com/DriveAI/Navigation): Responsible for keeping track of where the car is with respect to public roads, and calculating the most optimal path from point A to point B. Then conveying that information to [Path-Planning](https://github.com/DriveAI/Path-Planning)
* [Path-Planning](https://github.com/DriveAI/Path-Planning): Responsible for taking [Perception](https://github.com/DriveAI/Perception) and [Navigation](https://github.com/DriveAI/Navigation) information and sending commands to the [Actuation](https://github.com/DriveAI/Actuation) node to actually actuate the vehicle.
* [Actuation](https://github.com/DriveAI/Actuation): Responsible for actuating the vehicle based on simple inputs.

## Requirements
This list of requirements will grow as our hardware needs become increasingly specific.
* USB 3.0
* Ubuntu 14.04 LTS x64

## Download
```bash
git clone --recursive https://github.com/DriveAI/DriveAI-Platform.git
git submodule foreach git checkout master
git submodule foreach git pull origin master
```

## Setup
```bash
cd DriveAI-Platform
sh Tools/InstallScripts/install-ros.sh
source /opt/ros/indigo/setup.<sh|zsh|bash>
source devel/setup.<sh|zsh|bash>
```

## Compile
We are currently in the process of rapidly prototyping our platform. Currently the most meaningful thing someone can run is our tests.
```bash
catkin_make utest
```

## Running our tests
There are [four ROS Packages](https://github.com/DriveAI/DriveAI-Platform/tree/adding-readme#architecture):
You can run their tests with the following syntax:
```bash
rosrun <Package-Name> utest
```

## Contribution
We welcome everyone to join our project! Fork us today and get started, we thank you in advance.

The overwhelming majority of our codebase is C++, and we use (Google's Styleguide) as our guidlines.

We run the linter (found in the `styles/` folder via the following command:
```
cd style
sh lint_all_files.sh
```

This essentially runs the linter, and asks it to ignore the 2 space tab requirement.

Ocasionally we run `astyle` to format our code. When we do so, we use the `--indent=tab` flag as such:
```
astyle FILE --indent=tab
```
