# ADD-GROUP at s7 for [0, 9]

ovs-ofctl -O OpenFlow13 add-group tcp:127.0.0.1:6641 group_id=0,type=select,bucket=weight:7,mod_dl_src:0A:00:14:01:00:05,mod_dl_dst:0A:00:14:FE:00:02,output=5,bucket=weight:3,mod_dl_src:0A:00:13:01:00:04,mod_dl_dst:0A:00:13:FE:00:02,output=4

# ADD-FLOW(s) for [0, 9] at [0, 2, 3, 6, 7, 8, 9]

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6634 in_port=1,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:0B:01:00:03,mod_dl_dst:0A:00:0B:FE:00:02,output=3

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6636 in_port=2,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:0D:01:00:04,mod_dl_dst:0A:00:0D:FE:00:02,output=4

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6637 in_port=2,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:0F:01:00:04,mod_dl_dst:0A:00:0F:FE:00:02,output=4

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6640 in_port=2,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:12:01:00:03,mod_dl_dst:0A:00:12:FE:00:03,output=3

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6641 in_port=3,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=group=0

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6643 in_port=2,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:09:01:00:01,mod_dl_dst:0A:00:09:02:00:00,output=1

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6642 in_port=2,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:15:01:00:03,mod_dl_dst:0A:00:15:FE:00:03,output=3

ovs-ofctl -O OpenFlow13 add-flow tcp:127.0.0.1:6643 in_port=3,ip,nw_src=10.0.0.2,nw_dst=10.0.9.2,actions=mod_dl_src:0A:00:09:01:00:01,mod_dl_dst:0A:00:09:02:00:00,output=1
