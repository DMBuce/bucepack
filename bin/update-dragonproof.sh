#!/bin/bash -e

cd "$(git rev-parse --show-toplevel)"

touch data/minecraft/tags/blocks/dragon_immune.json.sempl
make data/minecraft/tags/blocks/dragon_immune.json

