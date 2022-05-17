//general tips

toggle sidebar: Ctrl + b
open integrated terminal: Ctrl + `
toggle bottom window: Ctrl + J
move between panels Ctrl + 1, Ctrl + 2
close file: ctrl + W
zen mode
middle button selection
selection - > expand selection. (Alt+Shift+right)
------
Split lines: Ctrl+Shift+L


terminal:
- split terminal Ctrl + \

// How to export and import extensions:
 
code --list-extensions > extensions.list
cat ./extensions.list |% { code --install-extension $_}

// Import extension on Ubuntu
- Convert extensions list from Windows format to Unix (copy and save in a new file in VSCode)
cat extensions.list | grep -v '^#' | xargs -L1 code --install-extension

//Update!! Just use extensions_linux.list
cat extensions_linux.list | grep -v '^#' | xargs -L1 code --install-extension

// Import extensions on Windows:
for /F "tokens=*" %A in (extensions.list) do code --install-extension %A
!NOTE: You may need to change encoding of the extensions.list file before issuing this command.

// Where to place keybindings.json and settings.json files
// On Ubuntu it's in ~/.config/Code/User 

