# adding a crone job to periodically calling archive.sh
export arch_path =/home/ec2-user/healthwise 
echo 'adding new job'
echo '* 1 * * * /home/ec2-user/healthwise/archive.sh' >> /etc/crontab