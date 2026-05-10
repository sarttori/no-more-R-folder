mkdir -p ~/.local/share/R

echo 'R_LIBS_USER="~/.local/share/R/%p-library/%v"' >> ~/.Renviron

mv ~/R/* ~/.local/share/R/ 2>/dev/null

rm -rf ~/R

# To be absolute sure it worked: enter the terminal, type R
# to enter the environment, then run this command: .libPaths()
# The first output path must be the one set above. 
