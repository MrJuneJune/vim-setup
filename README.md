<!-- ABOUT THE PROJECT -->
## Vim for beginner

[![vim][vim-image]](https://www.vim.org/)

Vim is a configurable text editor that is widely used amongst programmers.

Here's why:
* Uses only a keyboard so no accidental misclick while copying or moving through files.
* [You can record your action and replay it to reduce mundane tasks.](https://vim.fandom.com/wiki/Recording_keys_for_repeated_jobs)
* Many shortcuts and keys to make simple tasks quicker. i.e) Copying and pasting a line or a block of codes, change all re-occurring variable names, etcs.
* Can be used in remote servers.

And many more.

### Pre-requisite

Following libraries will be needed for this vim setup. 

* [vim](https://www.vim.org/download.php)
```
# For Linux,
sudo apt-get install vim
```
* [vim plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Getting Started

Copy `vimrc` file into `~/.vimrc` file.

Run `:PlugInstall`

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[vim-image]: https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg
