#!/bin/bash

# Check if node and npm are installed
node -v
if [ $? -ne 0 ]
then
	echo "node not installed."
	exit 1
fi

npm -v
if [ $? -ne 0 ]
then
	echo "npm not installed."
	exit 1
fi

# Install dependencies
npm install

# Run all mix tasks
npm run dev
# Run all mix tasks and minify output
#npm run production

# Install php dependencies
composer install --optimize-autoloader --no-dev

# Optimize configuration loading
#php artisan config:cache

# Optimize route loading
#php artisan route:cache