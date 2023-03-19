# After Install

A fully automated Repository containing all the scripts to help you setting up your system (Ubuntu/Mac) ultra fast with just one commands.

This repository is made with keeping mind in all the best practices for all applications mentioned and keeping in mind that it's extensible.
This is also updated as of **22.04** & new Mac versions.

## Supported Scripts

- General Developement Installation
- Flatpak Support
- Mobile Developement Support with React-Native
- UI Customizaton
- Commonly used Gnome-Extension
- Commonly used Apps for UI, Media
- Game Dev. support

## Setup

Common steps for both Mac & ubuntu

- Download the ZIP from above
- Navigate to the root folder
- Run this command on the root

```bash
    chmod +x **/*.sh
```

### Mac Steps

- Run this command to start the setup

```bash
    ./scripts/mac/setup.sh
```

## Ubuntu Setup

For Ubuntu you have 2 options -

- [Flatpak (Recommended)](https://github.com/deepakkumardk/AfterInstall/tree/feature/flatpak)
- [Normal Installation with APT](https://github.com/deepakkumardk/AfterInstall)

### Steps

- Open the link you want to go with from the above 2 options (APT or Flatpak)
- For Mac you can start with here
- Download the ZIP from above
- Navigate to the root folder
- Run this command on the root
  `chmod +x **/*.sh`
- If you choose the Flatpak option run this command first, this will install the flatpak and **_reboot_** your system
  `./scripts/ubuntu/flatpak-install.sh`
- Run this command to start the setup
  For **Ubuntu** -
  `./scripts/ubuntu/setup.sh`
  For **Mac** -
  `./scripts/ubuntu/setup.sh`
- For Ubuntu install the fonts (in directory ubuntu/fonts) if you are opting zsh which is enabled by default.
- If you want to install the flipper for react-native run the flipper script.

### Next Step

- Few suggested Applications are below -
- Virtual Box, VenToy
- Custom Keyboard Shortcuts -
  - _ulauncher-toggle (win+space)_
  - _xkill (Ctrl+Alt+Backspace)_

## Troubleshoot

- If your terminal couldn't recognize the **nvm** command try opening a new terminal and run the `nvm ls` command again.
- If the above doesn't help try to reboot the system.
- Then run the dev-npm-packages.sh script again, if it fails with error, copy the whole file and paste it in terminal.
