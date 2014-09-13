TEMPLATE_DIR=~/Templates
FONT_DIR=~/.fonts

# Install templates
if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Creating template folder"
    mkdir "$TEMPLATE_DIR" -v
else
    echo "Template folder exists"
fi
echo "Copying templates to home folder"
cp ./res/Templates/* "$TEMPLATE_DIR" -vu

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
