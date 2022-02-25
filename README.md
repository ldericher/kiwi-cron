# kiwi-cron

[![Build Status](https://github.drone.yavook.de/api/badges/ldericher/kiwi-cron/status.svg)](https://github.drone.yavook.de/ldericher/kiwi-cron)

> `kiwi` - simple, consistent, powerful

Simple cron-jobs  for [`kiwi-scp`](https://github.com/ldericher/kiwi-scp)

## Quick start

kiwi-cron comes with a pre-configured cron daemon for periodic jobs. 
Just drop your scripts into the relevant directory under `/kiwi-cron/` and that's it.

- `/kiwi-cron/hourly` – is run every full hour
- `/kiwi-cron/daily` – is run every day at 2 am
- `/kiwi-cron/weekly` – is run every saturday at 3 am
- `/kiwi-cron/monthly` – is run on the first day of every month at 5 am
- `/kiwi-cron/yearly` and `/kiwi-cron/annually` – is run on every January 1st at 12 am

## `/kiwi-cron/every` directory

You can use directories like `/kiwi-cron/every/5_minutes` to run scripts every 5 minutes. 
`kiwi-cron` automatically picks up on that format and generates cron schedules for you.

You can define schedules to be run every N minutes, hours, days, or months that way.
