#!/bin/sh


echo "wait 5 sec"
sleep 5
rosservice call /uav1/odometry/change_alt_estimator_type_string "value: baro"

echo "wait 5 sec"
sleep 5
rosservice call /uav1/control_manager/goto_relative "goal: [0.0, 0.0, 5.0, 0.0]"

for i in 1 2 3; do
    echo ""
    echo "counter: $i / 3 => -1m"
    echo "wait 5 sec"
    sleep 5
    rosservice call /uav1/control_manager/goto_relative "goal: [-1.0, 0.0, 0.0, 0.0]"
#rosservice call /uav1/control_manager/goto_relative "goal: [-1.0, 0.0, 0.0, 0.0]"
#rosservice call /uav1/control_manager/goto_relative "goal: [-1.0, -1.0, 0.0, 0.0]"
done

for i in 1 2 3 4 5 6 7; do
    echo ""
    echo "counter: $i / 7 => -1m -1m"
    echo "wait 5 sec"
    sleep 5
    #rosservice call /uav1/control_manager/goto_relative "goal: [0.0, -5.0, 0.0, 0.0]"
    rosservice call /uav1/control_manager/goto_relative "goal: [-1.0, -1.0, 0.0, 0.0]"
done