TEMPLATE_DIR=~/Templates
if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Creating template folder"
    mkdir "$TEMPLATE_DIR" -v
else
    echo "Template folder exists"
fi
echo "Copying templates to home folder"
cp ./res/Templates/* "$TEMPLATE_DIR" -vu
