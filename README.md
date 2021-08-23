<!-- ABOUT THE PROJECT -->
## Vim for beginner

[![vim][vim-image]](https://www.vim.org/)

Vim is a configurable text editor that is widely used amongs programmer.

Here's why:
* Uses only keyboard so no accidental misclick while copying.
* [You can record your action and replay it to reduce mundance tasks.](https://vim.fandom.com/wiki/Recording_keys_for_repeated_jobs)
* Many shortcuts and keys to make simple tasks quicker.
* Can be used in remote servers.

And many mores.

### Pre-requisite

Following libraries will be needed for this vim setup.

* [vim](https://www.vim.org/download.php)
```
# For linux,
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
[vim-image]: https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AVimlogo.svg&psig=AOvVaw3BO9hGros7s259EaLnhf5K&ust=1629815741884000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPDD3vSux_ICFQAAAAAdAAAAABAH 
