for dir in */; do
	echo "Installing $dir"
	# give proper script permissions 
	chmod +x "$dir/install.sh"
	# run the install script
	./$dir/install.sh
done
