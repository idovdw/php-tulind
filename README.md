# php-tulind
Tulind bindings
https://tulipindicators.org/

# Requirements for compilation and installation
Make sure you have the desired php, php-dev and php-cpp libraries installed and compiled with the same php version.
Example for php v8.3:

When you want to install a specific version of PHP/dev, you can use Ondřej Surý’s PPA (for Ubuntu/Debian).
```bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
```
### Install development files necessary for compiling PHP extensions
```sudo apt install php8.3
sudo apt install php8.3-dev
php -v
```
Check if php version is correct, otherwise reboot or check how to use multiple php versions.
### Install PHP-CPP
```cd ~
git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP.git
cd PHP-CPP
make
sudo make install
```
You're now ready to compile and install the new extensions/version!

# Install
```bash
git clone git@github.com:idovdw/php-tulind.git
cd php-tulind/
phpize
./configure
sudo make install
```

# Build
(Not required if install is successful)
```bash
sudo make build
```

# Usage
```php
$tulind = new Tulind();

// Display tulind version
$tulind->version();

// Get all indicators
$tulind->indicators();

// Apply indicators on data
$tulind->sma([1,2,3,4,5,6,7,8,9,10], [10]));
$tulind->ema([25,24.875,24.781,24.594,24.5,24.625,25.219,27.25], [5]);
```
