# README

## Environment Setup (tested on Ubuntu 17.04)
1. Install **NVM**
    ```
    sudo apt-get update
    sudo apt-get install build-essential libssl-dev
    
    curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh -o install_nvm.sh
    bash install_nvm.sh
    
    source ~/.profile
    ```
1. Install **node.js** through NVM
    ```
    nvm install node
    nvm alias default node
    ```
1. Install **yarn**
    ```
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    
    sudo apt-get update && sudo apt-get install yarn
    ```
1. Install **RVM**
    ```
    sudo apt-get install software-properties-common
    
    sudo apt-add-repository -y ppa:rael-gc/rvm
    sudo apt-get update && sudo apt-get install rvm
    ```
1. At terminal window, click `Edit` > `Profile Preferences`, click on `Title and Command` tab
 and check `Run command as login shell`. Thanks to that, RVM will always load in terminal.
1. Restart (*otherwise you may get permission error*)
1. Install **ruby** through RVM
    ```
    rvm install ruby 2.4.0
    rvm use 2.4.0 --default
    ```
1. Install **bundler**
    ```
    gem install bundler
    ```
1. Install **postgres** database
    ```
    sudo apt-get install postgresql postgresql-contrib libpq-dev
    ```
1. Create postgres **user** for the application (username and password are only example)
    ```
    sudo sudo -u postgres psql
    
    CREATE USER username SUPERUSER PASSWORD 'password';
    \q
    
    echo "export USERNAME=username" >> ~/.profile
    echo "export PASSWORD=password" >> ~/.profile
    . ~/.profile
    ```

## Application Setup
1. Clone repository
    ```
    git clone https://github.com/kwitczak/rails_react_blog.git
    cd rails_react_blog/
    ```
1. Download dependencies
    ```
    bundle && yarn
    ```
1. Run server with
    ```
    foreman start -f Procfile.dev
    ```
1. Visit `http://localhost:5000/`