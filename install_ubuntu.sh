#!/bin/env bash
set -e

# update & install base
sudo apt update && sudo apt dist-upgrade -y && sudo apt clean && sudo apt autoclean && sudo apt autoremove -y && \
sudo apt install --no-install-recommends \
mc \
wget \
curl \
htop \
rtorrent \
screen \
screenfetch \
neofetch \
git \
sshfs \
autossh \
sshuttle \
hexcurse \
nmap \
irssi \
weechat \
finch \
socat \
axel \
ncdu \
cmatrix \
fzf \
socat \
lolcat \
peco \
dstat \
cmus \
tig \
fish \
stress \
stress-ng \
ppa-purge \
gddrescue \
rclone \
restic \
lz4 \
aria2 \
rsync \
bpytop \
bmon \
toybox \
hexyl \
exa \
tmux \
duf \
nnn \
fdupes \
secure-delete \
lxsplit \
arj \
safecopy \
ext4magic \
build-essential \
dkms \
g++ \
python3-dev \
python3-venv \
python3-dialog \
checkinstall \
sqlite3 \
flac \
lame \
mdf2iso \
ccd2iso \
eyed3 \
ffmpeg \
mencoder \
aircrack-ng \
john \
reaver \
crunch \
chntpw \
netcat \
cool-retro-term \
gparted \
filezilla \
hexchat \
psensor \
cpu-x \
hexchat \
timeshift \
terminator \
doublecmd-gtk \
nfoview \
tuxcmd \
brasero \
remmina \
remmina-plugin-rdp \
remmina-plugin-vnc \
borgbackup \
vorta \
luckybackup \
audacious \
soundconverter \
vlc \
stacer \
clamav \
clamtk \
gimp \
pinta \
krita \
-y

# install additional libs

sudo apt install --no-install-recommends \
libncurses-dev \
libsmbclient-dev \
libssh2-1-dev \
python3-passlib \
libnl-genl-3-dev \
-y

sudo apt install --no-install-recommends \
codelite \
codelite-plugins \
codeblocks \
codeblocks-contrib \
geany \
geany-plugins \
glade \
gitk \
gitg \
valgrind \
bless \
thonny \
kdevelop \
sqlitebrowser \
-y


# gstreamer + media updates

# sudo apt-get install \
# libgstreamer1.0-dev \
# libgstreamer-plugins-base1.0-dev \
# libgstreamer-plugins-bad1.0-dev \
# gstreamer1.0-plugins-base \
# gstreamer1.0-plugins-good \
# gstreamer1.0-plugins-bad \
# gstreamer1.0-plugins-ugly \
# gstreamer1.0-libav \
# gstreamer1.0-tools gstreamer1.0-x \
# gstreamer1.0-alsa gstreamer1.0-gl \
# gstreamer1.0-gtk3 gstreamer1.0-qt5 \
# gstreamer1.0-pulseaudio


 # sudo add-apt-repository ppa:savoury1/ffmpeg4
 # sudo add-apt-repository ppa:sasudo apt-get install ppa-purge
 # sudo ppa-purge ppa:savoury1/ffmpeg4
 # sudo ppa-purge ppa:savoury1/multimediavoury1/multimedia
 # sudo apt-get update
 # sudo apt-get dist-upgrade


# sudo apt-get install ppa-purge
# sudo ppa-purge ppa:savoury1/ffmpeg4
# sudo ppa-purge ppa:savoury1/multimedia


# install debs
debs () {
    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            debs "$pathname"
        elif [ -e "$pathname" ]; then
            case "$pathname" in
                *.deb)
                    sudo dpkg -i "$pathname"
            esac
        fi
    done
}
# install debs
debs "$(pwd)/debs"
