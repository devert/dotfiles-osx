function __check_nvm --on-variable PWD --description 'Detect node version'
  if test -f .nvmrc
    set node_version (nvm version)
    set nvmrc_node_version (nvm version (cat .nvmrc))

    if [ $nvmrc_node_version = "N/A" ]
      echo "Installing node version $nvmrc_node_version"
      nvm install
    else if [ $nvmrc_node_version != $node_version ]
      echo "Changing node version to $nvmrc_node_version"
      nvm use
    end
  end
end

# Create a new directory and enter it
function mkcd
    mkdir -pv $argv;
    cd $argv;
end
