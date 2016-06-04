# A plugin that automatically starts and manages keychain (SSH agent and GPG agent)

keychain --quiet --agents ssh,gpg ~/.ssh/id_personal ~/.ssh/id_work 0B25C552
source ~/.keychain/$(hostname)-sh
