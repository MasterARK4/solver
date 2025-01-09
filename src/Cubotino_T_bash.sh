# activate the venv
source /home/pi/solver/src/.virtualenvs/bin/activate

# enter the folder with the main scripts
cd /home/pi/solver/src

# runs the robot main script
#python Cubotino_T.py -F -D
python Cubotino_T.py

# exit code from the python script
exit_status=$?

# based on the exit code there are three cases to be handled
if [ "${exit_status}" -ne 0 ];
then
    if [ "${exit_status}" -eq 2 ];
    then
        echo ""
        echo "Cubotino_T.py exited on request"
        echo ""
    else
        echo ""
        echo "Cubotino_T.py exited with error"
        echo ""
    fi
	
else
    echo ""
    echo "Successfully executed Cubotino_T.py"
    echo ""

    # ‘halt -p’ command shuts down the Raspberry pi
    # un-comment 'halt -p' command ONLY when the script works without errors
    # un-comment 'halt -p' command ONLY after making an image of the microSD
    #halt -p

fi
