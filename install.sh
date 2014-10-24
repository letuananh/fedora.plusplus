TEMPLATE_DIR=~/Templates
FONT_DIR=~/.fonts
BIN_DIR=~/bin
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
# TODO: Add it to PATH

# Install fonts
if [ ! -d "$FONT_DIR" ]; then
    echo "Creating font folder"
    mkdir "$FONT_DIR" -v
else
    echo "Font folder exists"
fi
echo "Copying fonts to home folder"
cp ./res/Fonts/SourceCodePro/*.ttf "$FONT_DIR" -vu

su -c "./install-package.sh"
