########################################################################
# CONFIGURATION
########################################################################
TEMPLATE_DIR=~/Templates
FONT_DIR=~/.fonts
BIN_DIR=~/bin

########################################################################
# HELPER FUNCTIONS
########################################################################

##
# Append a line at the end of a text file if it doesn't exist
# ARG1 ($1): String to inject
# ARG2 ($2): Path to file
##
function inject {
	ARG1=$1
	ARG2=$2
	if grep -q -e "^${ARG1}$" ${ARG2}; then 
		echo 'String exists, injection aborted.';
		#echo '----------------------------------'
		#cat ${ARG2}
		#echo '----------------------------------'
	else 
		echo 'String not found. Inject now';
		echo ${ARG1} >> ${ARG2} ; 
	fi
}

########################################################################
# MAIN
########################################################################

# Install templates
if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Creating template folder"
    mkdir "$TEMPLATE_DIR" -v
else
    echo "Template folder exists"
fi
echo "Copying templates to home folder"
cp ./res/Templates/* "$TEMPLATE_DIR" -vu

# Create bin folder
if [ ! -d "${BIN_DIR}" ]; then
    echo "Creating bin folder"
    mkdir "${BIN_DIR}" -v
else
    echo "Bin folder exists"
fi

echo "Copying files to bin folder"
cp ./res/bin/* "${BIN_DIR}" -vu
chmod u+x "${BIN_DIR}"/*

# TODO: Add it to PATH
inject 'export PATH=~/bin:$PATH' ~/.bashrc
inject "alias p3='python3 -m'" ~/.bashrc
inject "alias tcm='texcount ./main.tex | head'" ~/.bashrc
inject "export TERM='xterm-256color'" ~/.bashrc

inject "escape ^Zz" ~/.screenrc
inject "term screen-256color" ~/.screenrc

# Patch emacs
inject "(setq-default indent-tabs-mode nil)" ~/.emacs
inject "(setq tab-width 4)" ~/.emacs

inject "(require 'ido)" ~/.emacs
inject "(setq ido-enable-flex-matching t)" ~/.emacs
inject "(setq ido-everywhere t)" ~/.emacs
inject "(ido-mode 1)" ~/.emacs


# Install fonts
if [ ! -d "$FONT_DIR" ]; then
    echo "Creating font folder"
    mkdir "$FONT_DIR" -v
else
    echo "Font folder exists"
fi
echo "Copying fonts to home folder"
cp ./res/Fonts/SourceCodePro/*.ttf "$FONT_DIR" -vu


if [[ "$1" != "NP" ]]; then
    if [ "$EUID" -ne 0 ]
        then echo "Root permission is required to install packages"
        exit
    else
        su -c "./install-package.sh"
    fi
else
    echo "No package mode activated"
fi
