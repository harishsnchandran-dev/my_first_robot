# My First Robot — ROS 2 Publisher Node
ROS 2 Jazzy · Python · Docker · Ubuntu 24.04

## What This Does
A ROS 2 publisher node that sends messages through a topic every second.
Built as part of an M.Tech Smart Manufacturing project at VIT, progressing
toward industrial robotics and computer vision systems.

## Architecture
Publisher Node → hello_topic → Subscriber Node

## Tech Stack
- ROS 2 Jazzy
- Python 3.12
- Docker
- Ubuntu 24.04

## Run Locally
```bash
cd ~/ros2_ws
colcon build --packages-select my_first_robot
source install/setup.bash
ros2 run my_first_robot publisher_node
```

## Run with Docker
No setup required — pull and run on any machine:

```bash
docker pull YOUR_DOCKERHUB_USERNAME/ros2-publisher:v1
docker run YOUR_DOCKERHUB_USERNAME/ros2-publisher:v1
```

## What You'll See
