# Mwmbl XA11 Config

Mwmbl crawler `docker-compose.yml` file for the Hetzner XA11. Battle-tested. Avoids "out of memory, terminating process" OS errors.

## What's an XA11?

4GB of RAM, two virtual CPUs.

## Should I use this?

No. We're probably going to rewrite the crawler Soon :tm:. Until then, well, maybe hold off on an XA11. More bang for your buck, eh?

## Optimization

Redis takes around 1.3GB of RAM, so we use whatever's left over. As of writing, only one process works.

The table below is in the format `CRAWLER_WORKERS` x `CRAWL_THREADS`. Out of memory errors are system errors from the OS where it picks a thread to kill.

Tested on Ubuntu 26.04. Debian may provide a more minimal OS with a bit more RAM.

## Latest changes

- 4x10: stable
- 5x25: OOM
- 5x10: stable