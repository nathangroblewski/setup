source ~/.zshrc  # get my aliases

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#https://sdkman.io/
export SDKMAN_DIR="/Users/nathan.groblewski/.sdkman"
[[ -s "/Users/nathan.groblewski/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nathan.groblewski/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/sbin:$PATH"
 