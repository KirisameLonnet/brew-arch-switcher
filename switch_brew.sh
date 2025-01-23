current_arch=$(arch)


arm64_brew="/opt/homebrew"
x86_64_brew="/usr/local/homebrew"


echo "Current architecture: $current_arch"
echo "Select the architecture to switch to:"
echo "1. Apple's self-fertilization Architecture(Native Arm64)"
echo "2. Apple's ex-wife(Rosetta2 x86_64 Architecture)"
read -p "Enter number: 1 or 2 -  " choice

if [[ "$choice" == "1" ]]; then
	    echo "YOUR MAC IS JERKING OFF!"
		export HOMEBREW_PREFIX="$arm64_brew"
		export PATH="$HOMEBREW_PREFIX/bin:$PATH"
		echo "Switched to arm64 architecture's Homebrew: $HOMEBREW_PREFIX"
		arch -arm64 /usr/bin/env zsh
elif [[ "$choice" == "2" ]]; then
		echo "Your mac reconciled with his ex-wife~"
		export HOMEBREW_PREFIX="$x86_64_brew"
		export PATH="$HOMEBREW_PREFIX/bin:$PATH"
		echo "Switched to x86_64 architecture's Homebrew: $HOMEBREW_PREFIX"
		arch -x86_64 /usr/bin/env zsh

else
	    echo "Invalid choice, please enter 1 or 2."	
		exit 1
fi

echo "Current Homebrew path: $HOMEBREW_PREFIX"
echo "Current Homebrew version:"
$HOMEBREW_PREFIX/bin/brew --version
echo "uname -a"
