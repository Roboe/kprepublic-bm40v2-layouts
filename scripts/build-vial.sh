#! /usr/bin/env sh

set -e

cd ~/.local/lib/vial-gui
source venv/bin/activate

pip install -r requirements.txt
fbs freeze
# You might need to patch ./venv/lib64/python3.6/site-packages/PyInstaller/depend/utils.py:383 with [1:-1] instead of [1:]

TARGET_DIR="target/Vial_$(git describe --tags)"
rm -r "$TARGET_DIR"
mv target/Vial "$TARGET_DIR"
echo "Installed at $TARGET_DIR"

deactivate
