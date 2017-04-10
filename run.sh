#!/bin/bash
export DISPLAY=:0
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
./cgminer -o "$URL" -u "$USER" -p "$PASS"
