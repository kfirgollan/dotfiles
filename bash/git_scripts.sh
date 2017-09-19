checkout_remove_untracked() {
	# Fix the following error when performing git checkout
	# error: The following untracked working tree files would be overwritten by checkout:                                                     │~
	# 		a
	# 		b
	# Please move or remove them before you can switch branches.                                                                              │~
	# Aborting
	declare branch="$1"
	# Skip the first/last two lines and remove tabs.
	git checkout ${branch} 2>&1 | tail -n +2 | head -n -2 | cut -f 2 | xargs rm
}

git_big_blobs() {
	# Shows you the largest objects in your repo's pack file.
	# Written for osx.
	#
	# @see https://stubbisms.wordpress.com/2009/07/10/git-script-to-show-largest-pack-objects-and-trim-your-waist-line/
	# @author Antony Stubbs

	# set the internal field spereator to line break, so that we can iterate easily over the verify-pack output
	IFS=$'\n';

	# list all objects including their size, sort by size, take top 10
	objects=`git verify-pack -v .git/objects/pack/pack-*.idx | grep -v chain | sort -k3nr | head`

	echo "All sizes are in kB's. The pack column is the size of the object, compressed, inside the pack file."

	output="size,pack,SHA,location"
	allObjects=`git rev-list --all --objects`
	for y in $objects
	do
		# extract the size in bytes
		size=$((`echo $y | cut -f 5 -d ' '`/1024))
		# extract the compressed size in bytes
		compressedSize=$((`echo $y | cut -f 6 -d ' '`/1024))
		# extract the SHA
		sha=`echo $y | cut -f 1 -d ' '`
		# find the objects location in the repository tree
		other=`echo "${allObjects}" | grep $sha`
		#lineBreak=`echo -e "\n"`
		output="${output}\n${size},${compressedSize},${other}"
	done

	echo -e $output | column -t -s ', '
}

git_blob_owner() {
	obj_name="$1"
	shift
	git log "$@" --pretty=format:'%T %h %s' | while read tree commit subject ; do
		if git ls-tree -r $tree | grep -q "$obj_name" ; then
			echo $commit "$subject"
		fi
	done
}

my_branches() {
	git branch -a | grep kfir
}
