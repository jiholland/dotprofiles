### Dotprofiles 🧘

Clean and minimalistic dotprofiles for

    ~/.zshrc     # MacOS (ARM)
    ~/.bashrc    # Red Hat Enterprise Linux
    ~/.vimrc     # Python programming


#### Note-to-self
To always source bashrc,  add something like this to ~/.bash\_profile (or ~/.profile):


    if (test -r ~/.bashrc); then
        source ~/.bashrc
    fi
