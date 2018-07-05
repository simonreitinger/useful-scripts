#
# uninstaller for useful-scripts
# removes symlinks in the given path for all scripts
#

PS3="Select the directory of PATH where you installed the symlinks: "

# split PATH into a list
path_list=`echo $PATH | tr ":" " "`
select useful_scripts_path in $path_list
do
	for file in  *
	do
		# skip the install scripts and README.md
		# actual scripts do not have a dot so they get filtered by that
		if [[ $file != *"."* ]]
		then
			rm $useful_scripts_path/$file && \
				echo "deleted $useful_scripts_path/$file"
		fi
	done
	break
done

echo
echo "uninstall successful"
exit 0