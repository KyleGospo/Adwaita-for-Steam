# Adwaita for Steam

A skin to make Steam look more like a native GNOME app

<p align="center"><img src="screenshot.png?raw=true"/></p>

## Current state and plans

* **Main Window**: Done.
* **Login**: Done
* **Library**: Done
* **Small Mode**: Done.
* **Chat**: Done
* **Settings**: Mostly done.
* **New Overlay**: Mostly done.
* **New Big Picture**: Not done.
* **Recoloring**: Colors can be changed via making a new theme. See [colorthemes](colorthemes) dir.
* **Light Themes**: Not currently planned, though may now be more feasible with the new UI.

### Limitations

* **Steam updates may reset theme**: While the installer will patch steam files in order to theme the interface, these files may be reset by steam updates. If this happens, you will need to reinstall to repatch them.
* **Rounded corners**: Not all elements can be rounded, use [Rounded Window Corners extension](https://github.com/yilozt/rounded-window-corners) or [mutter-rounded](https://github.com/yilozt/mutter-rounded) on GNOME.
* **Steam website pages (Store/Community/Profiles/Etc)**: No longer themable with our current method.
* **Position of notifications**: Doesn't seem to be possible to change.
* **Height of sidebar items**: Doesn't seem to be possible to increase.

## Requirements

* [Python 3](https://www.python.org/downloads/)
* [Cantarell fonts](https://gitlab.gnome.org/GNOME/cantarell-fonts): An option to install these is included in the install script, but fonts packaged by your distro are preferred.
* The skin is created and tested mostly on the Linux version of Steam. Steam's new UI has largely unified platform differences, so other platforms should work, but are not a priority.

## Previews

<details><summary>Previews</summary>

### Adwaita

![Adwaita](/colorthemes/adwaita/preview.png?raw=true)

### Breeze

![Breeze](/colorthemes/breeze/preview.png?raw=true)

### Catppuccin-Frappe

![Catppuccin-Frappe](/colorthemes/catppuccin-frappe/preview.png?raw=true)

### Catppuccin-Macchiato

![Catppuccin-Macchiato](/colorthemes/catppuccin-macchiato/preview.png?raw=true)

### Catppuccin-Mocha

![Catppuccin-Mocha](/colorthemes/catppuccin-mocha/preview.png?raw=true)

### Dracula

![Dracula](/colorthemes/dracula/preview.png?raw=true)

### Gruvbox

![Gruvbox](/colorthemes/gruvbox/preview.png?raw=true)

### Kate

![Kate](/colorthemes/kate/preview.png?raw=true)

### Metro

![Metro](/colorthemes/metro/preview.png?raw=true)

### Nord

![Nord](/colorthemes/nord/preview.png?raw=true)

### One Pro

![One Pro](/colorthemes/one-pro/preview.png?raw=true)

### Pop

![Pop](/colorthemes/pop/preview.png?raw=true)

### Tokyo Night

![Tokyo Night](/colorthemes/tokyo-night/preview.png?raw=true)

### Tomorrow Night

![Tomorrow Night](/colorthemes/tomorrow-night/preview.png?raw=true)

### Yaru

![Yaru](/colorthemes/yaru/preview.png?raw=true)

</details>

## Installation

### With installer script

```bash
git clone https://github.com/tkashkin/Adwaita-for-Steam
cd Adwaita-for-Steam
./install.py
```

#### Arguments

| Argument         | Short  | Required Values                  | Description                                              |
| ---------------- | ------ | -------------------------------- | -------------------------------------------------------- |
| --color-theme    | -c     | [Colortheme](colorthemes)        | Change color theme                                       |
| --font-install   | -fi    |                                  | Installs static Cantarell fonts                          |
| --list-options   | -l     |                                  | List available patches, themes, and web extras           |
| --target         | -t     | normal / flatpak / [custom dir]  | Choose target location for install (default: both)       |
| --uninstall      | -u     |                                  | Uninstall theme                                          |
| --web-theme      | -w     | full / base / none               | Choose web theme variant (default: full)                 |
| --web-extras     | -we    | [Web Extra](web/extras)          | Enable one or multiple web theme extras                  |

#### Example Usage

```bash
# List options
./install.py -l
# Install with customizations (including fonts)
./install.py -fi -c nord -we login/hide_qr -we library/hide_whats_new
# For those who prefer a less adwaita-like theme
./install.py -we general/no_rounded_corners -we topbar/vanilla_bar
```

<details><summary>Custom CSS</summary>

If you wish to include your own custom CSS, `-we` supports passing arbitrary css files:

`./install.py -we ~/path/to/wherever/custom.css`

This is capable of overriding any of the current [css variables](https://github.com/tkashkin/Adwaita-for-Steam/blob/master/web/base/_root.css):

```css
:root
{
	--bg: #FF0000;
	--fg: #000000;
}
```

For more advanced edits, you should reference [Inspecting Steam](https://github.com/tkashkin/Adwaita-for-Steam/tree/master/web#inspecting-steam)

**Warning:** It is entirely possible to cause UI breakages using this feature. Please disable any custom css before troubleshooting or submitting issues.

</details>

### With graphical installer

Use the [graphical installer](https://github.com/Foldex/AdwSteamGtk) by [@Foldex](https://github.com/Foldex).

<a href="https://flathub.org/apps/details/io.github.Foldex.AdwSteamGtk"><img width="200" alt="Download on Flathub" src="https://flathub.org/assets/badges/flathub-badge-i-en.svg"/></a>

### Windows Install

- Download the [Latest Release](https://github.com/tkashkin/Adwaita-for-Steam/releases)
- Ensure you have [Python](#requirements) installed
- Double click the `install_windows` bat script and follow the prompts

