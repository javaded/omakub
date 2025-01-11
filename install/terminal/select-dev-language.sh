# Install default programming languages
if [[ -v OMAKUB_FIRST_RUN_LANGUAGES ]]; then
	languages=$OMAKUB_FIRST_RUN_LANGUAGES
else
	AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Go" "PHP" "Python" "Elixir" "Rust" "Java")
	languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
	for language in $languages; do
		case $language in
		Ruby)
			# check if ruby is installed
			if ! command -v ruby &> /dev/null; then
				mise use --global ruby@3.3
				mise x ruby -- gem install rails --no-document
			else
                echo "Ruby and Rails are already installed."
            fi
            ;;
		Node.js)
			# Check if Node.js is installed
            if ! command -v node &>/dev/null; then
                mise use --global node@lts
            else
                echo "Node.js is already installed."
            fi
            ;;
		Go)
			# Check if Go is installed
			if ! command -v go &> /dev/null; then
				mise use --global go@latest
			else
				echo "Go is already installed."
			fi
			;;
		PHP)
		    # Check if PHP is installed
			if ! command -v php &>/dev/null; then
				sudo add-apt-repository -y ppa:ondrej/php
				sudo apt -y install php8.3 php8.3-{curl,apcu,intl,mbstring,opcache,pgsql,mysql,sqlite3,redis,xml,zip}
				php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
				php composer-setup.php --quiet && sudo mv composer.phar /usr/local/bin/composer
				rm composer-setup.php
            else
                echo "PHP is already installed."
            fi
			;;
		Python)
			# Check if Python is installed
			if ! command -v python &> /dev/null; then
				mise use --global python@latest
			else
				echo "Python is already installed."
			fi
			;;
		Elixir)
			# Check if Elixir is installed
			if ! command -v elixir &> /dev/null; then
				mise use --global erlang@latest
				mise use --global elixir@latest
				mise x elixir -- mix local.hex --force
			else
				echo "Elixir is already installed."
			fi
			;;
		Rust)
			# Check if Rust is installed
            if ! command -v rustc &>/dev/null; then
				bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs)" -- -y
            else
                echo "Rust is already installed."
            fi
			;;
		Java)
			# Check if Java is installed
            if ! command -v java &>/dev/null; then
                mise use --global java@latest
            else
                echo "Java is already installed."
            fi
			;;
		esac
	done
fi
