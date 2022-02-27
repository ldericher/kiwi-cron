# kiwi-cron

[![Build Status](https://github.drone.yavook.de/api/badges/yavook/kiwi-cron/status.svg)](https://github.drone.yavook.de/yavook/kiwi-cron)

> `kiwi` - simple, consistent, powerful

Simple cron-jobs  for [`kiwi-scp`](https://github.com/yavook/kiwi-scp)

## Quick start

`kiwi-cron` comes with a (slightly) opinionated `cron` daemon config for periodic jobs. 
Just drop your scripts into the relevant directory under `/kiwi-cron`, that's it.

You will likely want to automate some tasks regarding your `docker` infrastructure. 
That's why the `kiwi-cron` images package a current `docker-cli` – you can just mount your `docker.sock` in its containers and use `docker` commands normally.

## Simple jobs

On startup, `kiwi-cron` checks for possible job files in the `/kiwi-cron` directory structure.

For each subdirectory, a random valid cron schedule is generated, so that:

- `/kiwi-cron/hourly` runs once every hour (random minute)
- `/kiwi-cron/daily` runs once every day (random nighttime value)
- `/kiwi-cron/weekly` runs once every weekend (random nighttime value on Saturday or Sunday)
- `/kiwi-cron/monthly` runs once every month (random nighttime value on a random day)
- `/kiwi-cron/yearly` and `/kiwi-cron/annually` runs once a year (random nighttime value on a random day in January or February)

Cron schedules are regenerated once on each startup, only for directories that have files.

## Finer granularity: The `/kiwi-cron/every` directory

Directories like `/kiwi-cron/every/5_minutes` will run scripts every 5 minutes. 
`kiwi-cron` picks up on that format and generates valid `cron` schedules on startup.

You can define schedules to be run every N minutes, hours, days, or months by creating the corresponding directories. 

Scheduling for every N weeks (or years) doesn't work that way; jobs in those directories will instead be run every week (or every year).

## Inspection

Checking the generated `cron` schedules is done using the standard `crontab` command:
`docker exec kiwi-cron-container crontab -l` will show the effective schedules.
