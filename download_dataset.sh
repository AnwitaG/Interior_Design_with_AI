mkdir datasets
FILE= $datasets

if [[ $FILE != "chairs" && $FILE != "room" ]]; then
    echo "Available datasets are: chairs, room"
    exit 1
fi

URL=https://github.com/AnwitaG/Interior_Design_with_AI/blob/4f47257af57c9896b2285e5fdc340d3f9ee17457/dataset.zip
ZIP_FILE=./datasets/$FILE.zip
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./datasets/
rm $ZIP_FILE
