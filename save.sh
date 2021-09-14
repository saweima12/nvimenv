#!/bin/bash
config_dir="$HOME/.config"
local_config_dir="./.config"

rm -rf $local_config_dir
mkdir -p $local_config_dir

cp -r $config_dir/nvim $local_config_dir
