#!/bin/sh

for i in 1 2 3 4 5; do
    echo "counter: $i / 5 => -1m"
    echo "wait 5 sec"
    sleep 5
    rosservice call /uav1/control_manager/goto_relative "goal: [-1.0, 0.0, 0.0, 0.0]"
done
