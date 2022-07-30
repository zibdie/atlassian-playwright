if [ $UID  -eq  0 ]
then
  echo "----> Detect running as root, adjusting 'npm' permissions"
  npm config set user 0
  npm config set unsafe-perm true
  echo "----> 'npm' permissions adjusted"
else
  echo ""
fi