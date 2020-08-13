

#!/usr/bin/python3.5
import localchangechannel

a=localchangechannel.local_change_channel()
local_channel= open('/home/dnc2/Documents/catkin_ws/src/tx2_directional_antenna_system/src/tx2_directional_antenna_system/local_channel.txt','w')
local_channel.write(a)

