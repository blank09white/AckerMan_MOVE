###阿克曼底盘移植源码（状态未移植只跑通）
###author:dx3906-y@qq.com
###Time:2025.8.5
#文件目录：
/*
Test02_ego ->
             build
             devel
             logs
             src  ->autonomous_exploration_development_enviroment
                  ->ego-planner
                  ->patchwork
                  ->qpOASES
                  (功能包)
主要功能都在src里面，autonmous...实现自主导航和探索->移植到真实机器人上。
https://www.cmu-exploration.com/
ego-planner -> 四旋翼局部规划器，借鉴此开发阿克曼底盘
https://github.com/ZJU-FAST-Lab/ego-planner
patchwork -> 3D传感器雷达的多功能地面分割算法
https://github.com/LimHyungTae/patchwork/wiki
qpOASES -> 解决MPC问题，并用MPC来跟踪
https://github.com/coin-or/qpOASES（我也看不懂）

*/
###环境依赖
ROS1 Noetic Ubuntu20LTS

###Start
/src/ego-planner
roslaunch ego_planner simple_run.launch

/src/autonomous_exploration_development_enviroment
roslaunch vehicke_simulator system_indoor.launch

