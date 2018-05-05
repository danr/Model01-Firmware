# https://community.keyboard.io/t/problems-getting-started-reflashing-model-01-on-arch-linux/488/20
yaourt -S arduino arduino-builder arduino-avr-core arduino-ctags avrdude
sudo usermod -a -G uucp $USER
su - $USER # re-login
sudo ln -s /usr/share/arduino /usr/local/arduino
cd /usr/share/arduino/hardware
sudo ln -s archlinux-arduino arduino
sudo ln -s archlinux-arduino tools
sudo mkdir -p /usr/share/arduino/tools/avr/bin
sudo ln -s /usr/bin/avrdude /usr/share/arduino/tools/avr/bin/
sudo mkdir -p /usr/share/arduino/tools/avr/etc
sudo ln -s /usr/share/arduino/hardware/archlinux-arduino/avr/bootloaders/gemma/avrdude.conf /usr/share/arduino/tools/avr/etc/
