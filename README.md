# Brave seach cli
A CLI to access brave search result browserless !
I use w3m to browse in the command line.
If Codellm or Summarize is not available, the script fall back to w3m browsing.

## Install
### Linux
```sh
sudo apt install curl sed jq w3m
```
### Mac
```sh
curl -V # check that it is installed
sed --version || brew install gnu-sed --with-default-names
brew install jq w3m
```

## To use it
You can put the function directly in your .bashrc or load it from the script.

Example:
```bash
mkdir ~/.scripts
ln -s brave-search-cli/brave_search_cli.sh ~/.scripts/
echo '[ -d ~/.scripts ] && for x in ~/.scripts/*.sh;do . $x;done || echo "Could not load scripts from ~/.scripts"' >> ~/.bashrc
. ~/.bashrc
```

## Side notes
To use CodeLLM, a search has to be done before.
Summarize works the same way.

## Improvements
You can create issues or pull request directly to improve it.
