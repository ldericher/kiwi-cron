# kiwi-cron

[![Build Status](https://github.drone.yavook.de/api/badges/ldericher/kiwi-cron/status.svg)](https://github.drone.yavook.de/ldericher/kiwi-cron)

> `kiwi` - simple, consistent, powerful

Simple cron-jobs  for [`kiwi-scp`](https://github.com/ldericher/kiwi-scp)

## Quick start

kiwi-cron comes with a pre-loaded cron daemon for periodic jobs. Just drop your executables into the relevant directory under `/etc/periodic/` and that's it.

- `/etc/periodic/5min` -- is run every 5 minutes
- `/etc/periodic/15min` -- is run every 15 minutes
- `/etc/periodic/hourly` -- is run every full hour
- `/etc/periodic/daily` -- is run every day at 2am
- `/etc/periodic/weekly` -- is run every saturday at 3am
- `/etc/periodic/month` -- is run on the first day of every month at 5am
