JAVA_VERSION=['1.6', '1.7', '1.8', '1.9']
HOST_JAVA_VERSION='1.5'
if HOST_JAVA_VERSION in JAVA_VERSION:
    print("The JAVA version is correct")
else:
    print("The JAVA version is incorrect")

import subprocess
KERNEL_VERSION="uname -a".split()
KERNEL_VERSION_SP=subprocess.Popen(KERNEL_VERSION,shell=False,stdout=subprocess.PIPE,stderr=subprocess.PIPE,universal_newlines=True)
KERNEL_VERSION_RC=KERNEL_VERSION_SP.wait()
KERNEL_VERSION_OUTPUT,KERNEL_VERSION_ERROR=KERNEL_VERSION_SP.communicate()
VALID_VERSION=['4', '2', '5', '6']
RESULT=KERNEL_VERSION_OUTPUT.split()[2].split("-")[0].split(".")[0]

if RESULT in VALID_VERSION:
    print("Kernel verssion check passed")
else:
    print("Kernel verssion check failed")