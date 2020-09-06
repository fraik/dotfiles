#!/bin/bash

if [ "$(uname -s)" == "Linux" ]; then
    export GDK_SCALE=1
    export GDK_USE_XFT=1
    export SAL_USE_VCLPLUGIN=gtk
    export GDK_BACKEND=wayland

    if [[ -x /usr/bin/gsettings ]]; then
        # To find all similar keys on schema type following command:
        #gsettings list-recursively org.gnome.desktop.interface

        # To reset all valuses of keys run following command in terminal:
        #gsettings reset-recursively org.gnome.desktop.interface

        # Make sure that Gnomish GTK3+ stuff uses a sane font config.
        gsettings set org.gnome.desktop.interface document-font-name 'Serif 12'
        gsettings set org.gnome.desktop.interface font-name 'Sans 12'
        gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 13'
    fi
fi
