#!/bin/bash

windowtitle=$(swaymsg -t get_tree 2>/dev/null | jq -r '..|try select(.focused == true).name' 2>/dev/null)
echo "$windowtitle"
