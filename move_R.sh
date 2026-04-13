# This script will (i) make a folder for R packages to live 
# in from now on (in .local/share), (ii) warn R about this 
# change, (iii) move current packages from one to another 
# and (iv) remove the vexing folder it creates in /home.

mkdir -p ~/.local/share/R

echo 'R_LIBS_USER="~/.local/share/R/%p-library/%v"' >> ~/.Renviron

mv ~/R/* ~/.local/share/R/ 2>/dev/null

rm -rf ~/R

# To be absolute sure it worked, enter terminal, type R and Enter;
# then run this command: .libPaths()
# The first output path must be the one set above. 
