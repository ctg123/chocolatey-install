# chocolatey-install

Repo for automated scripts via Chocolatey, a Windows SW package manager.

In the command prompt or terminal app (such as Windows Terminal, etc.) here is a list of useful commands.

```Powershell

# This will show all the software packages installed on your machine both managed by Chocolatey or unmanaged.

PS C:\Users\...> choco list -i

# Shows the list of software packages managed by Chocolatey. 

PS C:\Users\...> choco list

# This command will update all the software packages managed by Chocolatey.

PS C:\Users\...> choco upgrade -y all
```

## Windows software package management with Chocolatey

- Chocolatey works with all existing software installation technologies like MSI, NSIS, etc. and also works with runtime binaries and zip archives. Pretty much any application can be installed with Chocolatey.
- It also makes a Windows development machine look and feel more like a Linux/Unix machine. It can be scripted and automated to update, install all from within the command line.  This provides us a powerful tool that gives versatility and ease to manage majority of the Software that is available in Chocolatey's community repository.

## VS code command line extension management

The installation of VS code extensions is simple as seen with the Powershell commands seen below. Here is the list of all avaiable extensions [HERE](https://code.visualstudio.com/docs/editor/extension-marketplace#_command-line-extension-management). 

```Powershell
$ code --install-extension ms.python.python
$ code --install-extension [name of extension]
....

# To export the List of extensions for VSCode and convert to Powershell Script

code --list-extensions | ForEach-Object {"code --install-extension $_"} > extensions.ps1

# Running the Script to install all the extensions
./extensions.ps1

# To export the list of extensions in a Unix environment (Linux/MacOS), use the following script
$ code --list-extensions | xargs -L 1 echo code --install-extension > extensions.sh

# Running the Script to install all the extensions

$ chmod +x extensions.sh

$ sh extension.sh or ./extensions.sh
```
