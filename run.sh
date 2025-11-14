#!/bin/bash
echo "Starting to execute the project commands"

read -p "Enter what section of the project you want to run (web/backend/app/desktop): " section

if [ "$section" = "web" ]; then
    cd frontend || exit
    bash ../web.sh
elif [ "$section" = "backend" ]; then
    cd backend || exit
    bash ../backend.sh
elif [ "$section" = "app" ]; then
    cd app || exit
    bash ../app.sh
elif [ "$section" = "desktop" ]; then
    cd desktop || exit
    bash ../desktop.sh
else
    echo "Invalid section. Please choose from web, backend, app, or desktop."
fi
