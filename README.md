# My .dotfiles

This is my home directory configuration .dotfiles for `bash`, `git`, `vim` etc.

It works on Linux and Windows systems, (tested on Centos, RedHat, Ubuntu, MINGW32, MSYS2).

## What it does

- Print login info
- Ignore typos then change directory
- Keep `.bash_history` fairly clean, without noise
- Add aliases `alias/bash.alias.sh`
- Add aliases for drush `drush/drush.bashrc`
- Add autocomplete for drush `drush/.drush.completion.sh`
- Add autocomplete for git `git/.git.completion.sh`
- Add autocomplete for npm `npm/npm.completion.sh`
- Add autocomplete for vagrant `vagrant/vagrant.completion.sh`
- Fancy prompt `PS1`, showing `user@host working_directory git_status new_line` and updates the terminal's title bar with the working directory
- Fancy `ls`
- Configure `git` `.gitconfig`
- Add extra `git` command `git subrepo`
- Give a template for `.gitattributes`
- Add template for `.editorconfig`
- Configure vim `.vimrc`

## How to use

- Clone the project in your home directory `git clone https://github.com/tovletoglou/dotfiles.git`<br>
  Or download the [zip](https://github.com/tovletoglou/dotfiles/repository/archive.zip?ref=master) and extract.
- Edit `.gitconfig` and change on the section `[user]` the `name` and `email`.
- Run the script `./run.sh` to create symlinks form the `dotfiles` to your home directory
- Finally, restart your terminal.

Or if you like [Ansible](https://www.ansible.com/) you can use this role: [Ansible Role: dot-files](https://github.com/tovletoglou/ansible-role-dotfiles)

The final directory structure should look like:
```
~/dotfiles/(all the project's files)
~/.bash_history  -> ~/dotfiles/.bash_history
~/.bash_logout   -> ~/dotfiles/.bash_logout
~/.bash_profile  -> ~/dotfiles/.bash_profile
~/.bashrc        -> ~/dotfiles/.bashrc
~/.dir_colors    -> ~/dotfiles/.dir_colors
~/.gitattributes -> ~/dotfiles/.gitattributes
~/.gitconfig     -> ~/dotfiles/.gitconfig
~/.gitignore     -> ~/dotfiles/.gitignore
~/.viminfo       -> ~/dotfiles/.viminfo
~/.vimrc         -> ~/dotfiles/.vimrc
```

## File explanation

| file                          | description |
| ---                           | --- |
| alias/bash.aliases.sh         | Here we keep all the command abbreviations. By doing this we avoiding typing a long command sequence. |
| drush/drush.bashrc            | Aliases for Drush. |
| drush/drush.completion.sh     | Autocomplete for Drush. |
| drush/drush.prompt.sh         | Special PS1 for Drush (currently I don't use it). (TODO: find more about .drush.prompt.sh) |
| git/git-subrepo               | It's an extra command for git in order to manage sub-projects, something like git-submodule and git-subtree. For more information: [git-subrepo](https://github.com/ingydotnet/git-subrepo) |
| git/git.completion.sh         | Autocomplete for git. |
| git/git.prompt.sh             | If you browse a directory that is a git repository you can see the repository status in your prompt. |
| npm/npm.completion.sh         | Autocomplete for NodeJs. |
| vagrant/vagrant.completion.sh | Autocomplete for Vagrant. |
| .bash_history                 | Store all the commands you execute in the shell. We can quickly recall commands and navigate the terminal. |
| .bash_logout                  | Execute commands when exiting the shell, like clear the terminal. |
| .bash_profile                 | Execute commands when login in the shell. |
| .bashrc                       | The shell script that Bash runs whenever it is started interactively. |
| .dir_colors                   | Create environmental variables for colouring the shell (currently I don't use it). (TODO: find more about .dir_colors) |
| .editorconfig                 | Boiler plate for [EditorConfig](http://editorconfig.org/). |
| .gitattributes                | Boiler plate for .gitattributes. It configures which files are text and which are not. |
| .gitconfig                    | Boiler plate for .gitconfig. It configures git and adds git alias. Git alias are different from bash aliases. |
| .gitignore                    | Boiler plate for .gitconfig. |
| .viminfo                      | Default viminfo file. Here vim will automatically store cache and buffers. |
| .vimrc                        | Configuration for vim text editor. |

## Disclaimer

This is code & configuration snippets collection from various projects on GitHub. Many thanks OpenSource community.
