# Mwmbl XA11 Config

Mwmbl crawler `docker-compose.yml` file for the Hetzner XA11. Battle-tested. Avoids "out of memory, terminating process" OS errors.

## What's an XA11?

4GB of RAM, two virtual CPUs.

The table below is in the format `CRAWLER_WORKERS` x `CRAWL_THREADS`. Out of memory errors are system errors from the OS where it picks a thread to kill.

Tested on Ubuntu 26.04. Debian may provide a more minimal OS with a bit more RAM.

## After RAM sharing PR

- 4x100: Out of memory errors
- 4x10: Out of memory errors
- 3x10: Stable
- 3x300: Out of memory errors
- 3x200: Out of memory errors
- 2x200: Out of memory errors
- 1x320: Stable
- 1x640: stable
- 1x1000: stable
- 1x2000: testing