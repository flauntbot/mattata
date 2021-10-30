echo "This script is intended to work with Ubuntu 20.10, other versions may also"
echo "work. Root access is required to complete the installation. Press enter to continue,"
echo "or press CTRL + C to abort."

echo "[Info] Using a deb package might be a better idea, if possible"

# shellcheck disable=SC2162
read
set -e

# coreutils?? (shuf, rm...), webp -> dwebp (addsticker), uuid-runtime -> uuidgen (feds), tesseract (anticrypto)
aptlist="redis-server imagemagick|gd-captcha|ejabberd webp uuid-runtime tesseract"
# shellcheck disable=SC2086
sudo apt-get --yes install $aptlist

aptlist="lua-socket lua-lpeg lua-redis lua-filesystem lua-zlib lua-md5 lua-telegram-bot lua-rex-pcre lua-http"
# shellcheck disable=SC2086
sudo apt-get --yes install $aptlist

echo "[Info] If your redis config is a bit weird (like mine) you may want a special tool to backup JUST the bot's index."
echo "[Info] I recommend the rubygem called redis-dump. On Ubuntu I think you would have to use 'gem install' to grab it."
echo "[Info] (I tried gem2deb-ing it, but the current gemspec is broken. Is that a problem upstream?)"
#echo "[Info] Installing redis-dump..."
#sudo gem install redis-dump

echo "[Info] Installation complete."
