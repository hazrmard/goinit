function goinit {
	p=$(pwd)
	export _OLDGOINITPATH=$PATH
	export GOPATH=$p
	export PATH=$PATH:$p/bin
}

function godie {
	if [[ -n $_OLDGOINITPATH ]] 
	then
		export PATH=$_OLDGOINITPATH
		unset GOPATH
		unset _OLDGOINITPATH
	fi
}
