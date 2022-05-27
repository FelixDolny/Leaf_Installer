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

   echo '
        ***********************************************************
   	** System installer is about to check for system updates **
	***********************************************************'


   echo ' 
   	******************************************************
	** System installer is about to upgrade your system **
	******************************************************'

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
