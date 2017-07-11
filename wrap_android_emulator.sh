#!/bin/bash
# it wraps the Android Emulator with CLI options
# written 2017-03-07 by Martin Zeitler

# Size of Android Emulator 26.0.3.0 (build_id 3965150)
ANDROID_EMU_MIN_SIZE=625840

ANDROID_QEMU_CLI_PARAMS="-qemu -vga cirrus -m 2G -k de -snapshot -enable-kvm"
ANDROID_EMU_CLI_PARAMS="-use-system-libs -no-boot-anim -verbose -gpu swiftshader"
ANDROID_EMU_FILE_NAME="$ANDROID_HOME/emulator/emulator"

# checking if the emulator was already wrapped
if [ $(stat -c%s "$ANDROID_EMU_FILE_NAME") -ge $ANDROID_EMU_MIN_SIZE ]; then
    echo "wrapping the Android QEMU with CLI options ..."
    mv "$ANDROID_EMU_FILE_NAME" "$ANDROID_EMU_FILE_NAME.bin"
else
    echo "the Android QEMU emulator is already wrapped;"
    # checking if the emulator was already moved
    if [ $(stat -c%s "$ANDROID_EMU_FILE_NAME.bin") -ge $ANDROID_EMU_MIN_SIZE ]; then
        echo "just updating the CLI paramters being passed."
    else
        # terminate execution and indicate an error 
	exit 1 
    fi
fi

# create a bash script
echo "#!/bin/bash" > "$ANDROID_EMU_FILE_NAME"
echo "set -ex" >> "$ANDROID_EMU_FILE_NAME"
echo "\$0.bin \$@ $ANDROID_EMU_CLI_PARAMS $ANDROID_QEMU_CLI_PARAMS" >> "$ANDROID_EMU_FILE_NAME"
ANDROID_EMU_SCRIPT_SIZE=$(stat -c%s "$ANDROID_EMU_FILE_NAME")
echo "the patch has been applied, $ANDROID_EMU_SCRIPT_SIZE were written."

