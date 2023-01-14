### Dotprofiles 🧘

Clean and minimalistic dotprofiles for

    ~/.zshrc     # MacOS (ARM)
    ~/.bashrc    # RHEL
    ~/.vimrc     # Python programming


**Note-to-self**📝<br>
To always source bashrc,  add something like this to ~/.bash\_profile (or ~/.profile):


    if (test -r ~/.bashrc); then
        source ~/.bashrc
    fi
