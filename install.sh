#
# installer for useful-scripts
# creates a symlink in the given path for all scripts
#

PS3="Select the directory of PATH you want the symlinks to be created in: "

# import script-path for correct symlinks
# imports script_path variable
source script-path


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
			# check if file exists
			if [[ -L $useful_scripts_path/$file ]]
			then
				rm $useful_scripts_path/$file
			fi
			
			ln -s $script_path/$file $useful_scripts_path/$file && \
				echo "created symlink $useful_scripts_path/$file"
		fi
	done
	break
done

echo
echo "install successful"