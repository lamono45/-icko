#!/bin/bash
# === DEBUG VERSION: CEK MASA AKTIF TANPA SHUTDOWN ===

MYIP=$(curl -s ipv4.icanhazip.com)
echo -e "\e[34mIP VPS saat ini: $MYIP\e[0m"

# Ambil data dari GitHub
AFK_LINE=$(curl -s https://raw.githubusercontent.com/lamono45/icko/main/afk | grep $MYIP)
echo -e "\e[34mHasil grep dari file afk:\e[0m"
echo "$AFK_LINE"

EXPIRED=$(echo "$AFK_LINE" | awk '{print $4}')
TODAY=$(date +"%Y-%m-%d")

echo -e "\e[34mTanggal Hari Ini : $TODAY\e[0m"
echo -e "\e[34mTanggal Expired  : $EXPIRED\e[0m"

# Notifikasi Telegram tetap dikirim kalau expired
CHATID="6617783693"
KEY="6751589620:AAHwjP6dzZhuqeyUOdYFc6742Q1YUVF1EjM"
URL="https://api.telegram.org/bot$KEY/sendMessage"

if [[ -z "$EXPIRED" ]]; then
    echo -e "\e[31mIP tidak ditemukan di file afk.\e[0m"
elif [[ "$TODAY" > "$EXPIRED" ]]; then
    echo -e "\e[31mScript SUDAH EXPIRED.\e[0m"
    TEXT="⚠️ SCRIPT EXPIRED\nIP: $MYIP\nExpired: $EXPIRED\nToday: $TODAY (DEBUG MODE)"
    curl -s --max-time 10 -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
else
    echo -e "\e[32mScript MASIH AKTIF. Bisa digunakan.\e[0m"
fi

echo -e "\n\e[36m(Debug mode aktif — tidak ada tindakan shutdown)\e[0m"

#!/bin/bash
# === DEBUG VERSION: CEK MASA AKTIF TANPA SHUTDOWN ===

MYIP=$(curl -s ipv4.icanhazip.com)
echo -e "\e[34mIP VPS saat ini: $MYIP\e[0m"

# Ambil data dari GitHub
AFK_LINE=$(curl -s https://raw.githubusercontent.com/lamono45/icko/main/afk | grep $MYIP)
echo -e "\e[34mHasil grep dari file afk:\e[0m"
echo "$AFK_LINE"

EXPIRED=$(echo "$AFK_LINE" | awk '{print $4}')
TODAY=$(date +"%Y-%m-%d")

echo -e "\e[34mTanggal Hari Ini : $TODAY\e[0m"
echo -e "\e[34mTanggal Expired  : $EXPIRED\e[0m"

# Notifikasi Telegram tetap dikirim kalau expired
CHATID="6617783693"
KEY="6751589620:AAHwjP6dzZhuqeyUOdYFc6742Q1YUVF1EjM"
URL="https://api.telegram.org/bot$KEY/sendMessage"

if [[ -z "$EXPIRED" ]]; then
    echo -e "\e[31mIP tidak ditemukan di file afk.\e[0m"
elif [[ "$TODAY" > "$EXPIRED" ]]; then
    echo -e "\e[31mScript SUDAH EXPIRED.\e[0m"
    TEXT="⚠️ SCRIPT EXPIRED\nIP: $MYIP\nExpired: $EXPIRED\nToday: $TODAY (DEBUG MODE)"
    curl -s --max-time 10 -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
else
    echo -e "\e[32mScript MASIH AKTIF. Bisa digunakan.\e[0m"
fi

echo -e "\n\e[36m(Debug mode aktif — tidak ada tindakan shutdown)\e[0m"
