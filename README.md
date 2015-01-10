# zsh-dircolors-solarized

[Solarized dircolors](https://github.com/seebi/dircolors-solarized) plugin for
zsh.

## Installation

I recommand using [antigen](https://github.com/zsh-users/antigen). Then you just
add the following line in your `.zshrc`:

    antigen bundle joel-porquet/zsh-dircolors-solarized.git


## Usage

This plugin offers two commands:

* `lssolarized` which lists the available solarized themes. For now there are:
 * `dircolors.ansi-universal` (universal theme for 16- and 256-color terminals)
 * `dircolors.ansi-dark` (optimized version of universal for dark background)
 * `dircolors.ansi-light` (optimized version of universal for light background)
 * `dircolors.256dark` (degraded solarized dark theme)

* `setupsolarized` which installs a theme. By default, without any argument, it
  will install `dircolors.ansi-universal`.

To automatically load a theme (for example the `ansi-light` version) when your
terminal starts, add the following line to your `.zshrc` (after loading the
plugin of course):

    setupsolarized dircolors.ansi-light
