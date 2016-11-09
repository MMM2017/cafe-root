#!/bin/bash
# Update All This Shit util v0.1

echo
echo '  Update All This Shit utility is delivering the latest version'
echo '              of all this shit specially for you'
echo

isInMaster () {
	branch_name=`git rev-parse --abbrev-ref HEAD`
	if [ "${branch_name}." == "master." ]; then
		return 0
	else
		return 1
	fi
}

updateModule () {
	module="${1}"
	if ! [ -d "${module}" ]; then
		echo "'${module}' is not a correct module name"
		return 1
	fi
	cd "${module}"
	echo "        Updating '${module}'... "
	if git pull origin master; then
		if git checkout master; then
			echo "        Done."
			cd ..
			return 0
		fi
	fi
	cd ..
	return 2
}

if [ "$#" -eq 0 -o "${1}." == "--help." ]; then
	echo "Usage:";
	echo "    bash UATS.sh <module1> [<module2> ...]" "  will update specified modules to their origin/master";
	echo "    bash UATS.sh --help                   " "  to display this message";
	echo "Example:"
	echo "    bash UATS.sh cafe-client              " "  will update cafe-client to its origin/master.";
	echo "                                          " "  E.g., use this command if you are working on server";
	echo "                                          " "  and want to get latest version of client for testing.";
	exit
fi

while [ "$#" -gt 0 ]; do
	modulename="${1}"
	if ! [ "${modulename}." == "." ]; then
		updateModule "${modulename}"
	fi
	shift
done
