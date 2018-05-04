#!/usr/bin/env bash


ask_for_password() {
    read -s -p "Give me password: " USER_PASS
    echo " "
    read -s -p "Retype Password: " RETYPE_PASSWORD
    if [ "$USER_PASS" = "$RETYPE_PASSWORD" ]; then
        export FINAL_USER_PASS=$MACHINE_USER_PASS
    else
        echo "Password is wrong"
    fi
}

function ask_for_user() {
    read -p "Give me user name: " USER_NAME
}

CONTINUE="yes"
while [ "$CONTINUE" = "yes" ]; do
    ask_for_user
    ask_for_password

    if [ -f "/app/.htpasswd" ]; then
        htpasswd -b /app/.htpasswd $USER_NAME $FINAL_USER_PASS
    else
        htpasswd -c -b /app/.htpasswd $USER_NAME $FINAL_USER_PASS
    fi

    read -p "Would you like add more users yes/no: " MORE
    case "$MORE" in
        "y" | "yes" | "YES" | "Yes")
            CONTINUE="yes"
         ;;
         *)
            CONTINUE="stop"
         ;;
    esac
done
