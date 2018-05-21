# ZSH pipenv plugin

basically just translated [pipenv.fish](https://github.com/fisherman/pipenv/blob/master/conf.d/pipenv.fish)
into valid bash.

It automatically activates a pipenv when entering a directory if there is Pipfile in that directory

It also turns on pipenv tab completion

## FYI

if you don't want zsh to shadow the virtualenv flair on your prompt you'll need to use this plugin 
with the `virtualenv` plugin aswell

