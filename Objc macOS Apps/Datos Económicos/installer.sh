#! /bin/sh

#################################################################
#	This "installer" compiles the project, copies the neccesary 
#	files for the program to the Desktop and runs it
#################################################################


cp -R datos_economicos/ $HOME/Desktop/datos_economicos/	
cd Balances
xcodebuild
cd build
cd Release
./Balances
