# steamdeck-gw2-account-selector
Running multiple accounts on Guild Wars 2 and tired of writing credentials? This script will make it easier by using Local.dat files with saved email and password.

Baseline from https://wiki.guildwars2.com/wiki/Command_line_arguments/multiple_account_swapping .

Script will search Local-${email}.dat files at the root of this repo and offer them as options to run the game with.

# Usage

## Preset

1. Log in to Guild Wars 2. When in character select. Log out and close portal.
2. Run `generate-account-dat.sh`. This will copy Local.dat and append prompted account name to it.
3. Continue adding accounts with step 1 and 2 until satisfied.
4. Run `run-gw2-selector.sh`

# Scripts

## generate-account-dat.sh
Generates account .dat-file from current Local.dat.
1. Move Local.dat from appdata to this folder
2. Rename it to given account name.

## run-gw2-selector.sh
1. Reads Local-${email}.dat files to list.
2. Prompts user which .dat-file(account) to use.
3. Copies that .dat-file into Local.dat.
4. Runs Guild Wars 2 which will then use the copied Local.dat
5. ?? Script exists? Or lives and can be used again after closing game?
