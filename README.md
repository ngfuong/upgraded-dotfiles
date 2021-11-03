# upgraded-dotfiles
Make a backup of your dotfiles in case things go nuts

### Credits
Big thanks to @ericjaychi for his original [repo](https://github.com/ericjaychi/sample-dotfiles) and [instructions](https://betterprogramming.pub/managing-your-dotfiles-with-git-4dee603a19a2)

# How to use
### 1. Fork this repository
And clone it to your local device
```
git clone git@github.com:<github-username>/upgraded-dotfiles
```

### 2. Copy your dot files
For example, you can copy your `.bashrc` file from `/home/<username>` directory to your local repository (without the `.` prefix for management purposes)
```
cp ~/.bashrc ~/upgraded-dotfiles/bashrc
```
You can overwrite or remove any dot files in the forked repository that is not needed for backup.

### 3. Symlink your files
Edit the **Variables** section in the `make-symlinks.sh` file
```
########## Variables
# dotfiles directory
# edit this with the path to the backup repository
dir=~/upgraded-dotfiles

# old dotfiles backup directory
# edit this with the path to make a copy of your dotfiles before you run the script
olddir=~/upgraded-dotfiles/dotfiles_old

# list of files/folders to symlink in homedir
# edit this with the files you want to backup
files="bashrc vimrc zshrc config/nvim/init.vim"

##########
```
Run the script (in some case you have to make the file executable before it can be run)
```
# make the file executable
chmod +x make-symlinks.sh
./make-symlink.sh
```
### 4. Backup your files
Edit the dotfiles (e.g `.bashrc`) in your home directory normally and the files in your backup repository will be updated automatically.
If you want to record your changes, enter the local repository and stage the changes.
```
git add bashrc
git commit -m "Updated dot bash"
```

