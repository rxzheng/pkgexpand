pkgutil --expand $PATH $DESTINATIONFILE
#delete folder before you exec
#Show pkg contents, payload. 
#If payload is a folder, rename folder to $FOLDER.app
#If not:
#New folder
tar -xvf $PAYLOAD -C $NEWFOLDER
