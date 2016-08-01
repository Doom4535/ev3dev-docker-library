#!/bin/bash

set -e

# set the default font
echo -e -n "\nFONT='Lat15-TomThumb4x6.psf.gz'" >> /etc/default/console-setup
setupcon --save-only

# keyboard-setup takes long time during boot, so disabling for now.
update-rc.d keyboard-setup disable

# `kbd` does the same thing as `console-setup`/`keyboard-setup`, so we disable it too,
# Also, `kbd` breaks systemd, so we really don't want it enabled.
update-rc.d kbd disable
