# zsh-dircolors-solarized

[Solarized dircolors](https://github.com/seebi/dircolors-solarized) plugin for
zsh.

## Installation

I recommend using [antigen](https://github.com/zsh-users/antigen), but it is
also compatible with other plugin managers.

Add the following line in your `.zshrc`:

    antigen bundle joel-porquet/zsh-dircolors-solarized.git

## Usage

This plugin offers two commands:

* `lssolarized` which lists the available solarized themes. For now there are:
 * `dircolors.ansi-universal` (universal theme for 16- and 256-color terminals)
 * `dircolors.ansi-dark` (optimized version of universal for dark background)
 * `dircolors.ansi-light` (optimized version of universal for light background)
 * `dircolors.256dark` (degraded solarized dark theme)

* `setupsolarized` which installs a theme and saves the current configuration to
  the configuration file (`$HOME/.zsh-dircolors.config` by default). Without any
  argument, `setupsolarized` will use the theme `dircolors.ansi-universal`.
