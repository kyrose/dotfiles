# Initialize $PATH with system binaries
path=(
	/usr/local/bin
	/usr/local/sbin
	/usr/bin
	/bin
	/usr/sbin
	/sbin
	~/.local/bin
	~/bin
	$path
)