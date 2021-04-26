#############################################
#LIB_PATH                                   #
wrapper = 'tools/scons/scripts'#
#############################################

import sys
sys.path = [wrapper] +sys.path
from wrapper_lib import *


import SCons.Script
SCons.Script.main() 
