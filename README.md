# My dotfiles

This repository is a collection of common settings I use.

It makes it easier to replicate in other machines and gives the track of changes
I make over time.

## Installation

You need [GNU stow](https://www.gnu.org/software/stow/):

```sh
# e.g. using your favorite package manager
brew install stow
```

## Usage

To install the dotfiles, run:

```sh
cd ~/dotfiles
stow <folder_name>
```

Where `<folder_name>` is the name of the folder you want to install, e.g. `zsh`.

### Examples

#### ZSH
```sh
stow zsh
```

#### Micro
```sh
stow micro
```
