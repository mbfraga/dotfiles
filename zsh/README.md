# ZSH


## Optional

It may be desirable to source /etc/profile from /etc/zprofile in order for some
other helpful configurations to get sourced.

Create /etc/zprofile and include the following:

```bash
if [ -e /etc/profile ];then
    emulate sh -c 'source /etc/profile'
fi
```



## Create zsh cache

Because in the configuration I set the cache to **$XDG_CACHE_HOME**, it is
important to create that directory or zsh will cry about it

```bash
mkdir -p ~/.cache/zsh
```
## Screenshot

![zsh_prompt](https://github.com/mbfraga/dotfiles/blob/master/zsh/zsh_prompt.png)

![zsh_prompt_git](https://github.com/mbfraga/dotfiles/blob/master/zsh/zsh_prompt_git.png)
