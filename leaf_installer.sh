#! /bin/bash

echo ' 
*******************************************************************
*** Welcome to the Leaf Installer an automated system installer ***
*******************************************************************'

read -r -p 'Execute Leaf Installer Now [Y|N] ' response

if [[ "$response" =~ ^([yY])$ ]]; then 
   
   echo '
        ************************************************************
	** Altering system mirrors to track latest stable edition **
	************************************************************'
   cp -f sources.list /etc/apt/sources.list
   
   echo '
   	***********************************************************
	**              Mirrors have been updated                **
	***********************************************************'
   cat /etc/apt/sources.list 

   echo '
        ***********************************************************
   	** System installer is about to check for system updates **
	***********************************************************'
   apt update

   echo ' 
   	******************************************************
	** System installer is about to upgrade your system **
	******************************************************'
   apt dist-update -y

   echo ' 
   	***************************************************************
	** System installer is creating .themes & .icons directories **
	***************************************************************'

   echo '
   	***************************************************************************
	** System installer is transfering themes & icons to correct directories **
	***************************************************************************'

   echo ' 
   	*****************************************************************
	** System installer is transfering packages to /opt/ directory **
	*****************************************************************'

   echo '
   	*****************************************************************
	** System installer is about to install the following packages **
	*****************************************************************'

else
	echo 'Terminating script, Goodbye..'
fi
