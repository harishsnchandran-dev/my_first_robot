FROM ros:jazzy
WORKDIR /ros2_ws
COPY ros2_pkg/my_first_robot/ src/my_first_robot/my_first_robot/
COPY ros2_pkg/package.xml src/my_first_robot/package.xml
COPY ros2_pkg/setup.py src/my_first_robot/setup.py
COPY ros2_pkg/resource/ src/my_first_robot/resource/
RUN apt-get update && apt-get install -y python3-colcon-common-extensions python3-pip \
    && . /opt/ros/jazzy/setup.sh \
    && colcon build --packages-select my_first_robot \
    && pip install --break-system-packages -e src/my_first_robot/
CMD ["/ros2_ws/install/my_first_robot/bin/publisher_node"]
