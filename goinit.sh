function goinit {
	p=$(pwd)
	export _OLDGOPATH=$GOPATH
	export _EXISTINGPATH=$PATH
	export GOPATH=$p
	if [[ -n "$_OLDGOPATH"]]
	then
		export GOPATH=$GOPATH:$_OLDGOPATH
	fi
	export PATH=$PATH:$p/bin
}

function godie {
	if [[ -n $_EXISTINGPATH ]]
	then
		export PATH=$_EXISTINGPATH
		export GOPATH=$_OLDGOPATH
		unset _OLDGOPATH
		unset _EXISTINGPATH
	fi
}
