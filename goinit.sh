function goinit {
	p=$(pwd)
	export _OLDGOPATH=$GOPATH
	export _EXISTINGPATH=$PATH
	export GOPATH=$p:$GOPATH
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
