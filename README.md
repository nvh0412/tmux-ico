# Tmux ICO tracking

![Image of tmux-ico](https://i.imgur.com/mjiRzpm.png)

Enables displaying price of any ICOs in tmux status-right.

## Installation

### Sytem variables

Set TMUX_TRADING_API for fetching data

    # example
    TMUX_TRADING_URL=https://api.bitfinex.com/v2/ticker/tETHUSD

Reload TMUX environment

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
(recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'nvh0412/tmux-ico'

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/nvh0412/tmux-ico ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/ico.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

If format strings are added to `status-right`, they should now be visible.

## Usage

Add `#{ico_prices}` format strings to existing `status-right` tmux option.
Example:

    # in .tmux.conf
    set -g status-right '#{ico_prices} | %a %h-%d %H:%M '


### Maintainer

 - [Hoa Nguyen](https://github.com/nvh0412)

### License

[MIT](LICENSE.md)
