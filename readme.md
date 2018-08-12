# Daily Screens (MacOS only)

A cron-job utility that takes a screenshot of your main screen every minute using Launchd.

## Usage

1.  `git clone` this project into your Mac home folder, you go there with `cd ~`.
1.  Update `no.nilsnh.daily-screens.plist`, you need change the entry `ProgramArguments` so that the path to the downloaded `cron-shotter.sh` script can be found.
1.  Then you copy `no.nilsnh.daily-screens.plist` into `~/Library/LaunchAgents`. Jobs in this folder are run as the current logged in user.
1.  Load the script with `launchctl load no.nilsnh.daily-screens.plist`.

Use `launchctl *unload* no.nilsnh.daily-screens.plist` to disable the script.

## References

Much thanks to [this blogpost](https://alvinalexander.com/mac-os-x/mac-osx-startup-crontab-launchd-jobs) by Alvin Alexander for explaining that I needed to use Launchd instead of cron for MacOS.

## License

Licensed under [GNU GPLv3](license.md).
