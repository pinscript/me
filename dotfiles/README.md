# Dotfiles

These are the dotfiles I need to get anything done.

## Windows Terminal

Goes into settings.json. The easiest way to locate this file is to open Windows Terminal, open the settings dialog and click "Open JSON file" at the bottom left.

### Fonts

I currently use [Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases)

## Powershell

This goes into the profile folder, obviously. Easiest to find by issuing `$PROFILE` in a Powershell prompt.

### External modules

The only external module currently in use is [z](https://www.powershellgallery.com/packages/z/1.1.13).

## oh-my-posh

After installing oh-my-posh, execute `Get-PostContext` to find the path to the module and theme. It should then be easy to locate the theme file and do the relevant changes.