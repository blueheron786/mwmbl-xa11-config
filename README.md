# Mwmbl XA11 Config

Mwmbl crawler `docker-compose.yml` file for the Hetzner XA11. Battle-tested. Avoids "out of memory, terminating process" OS errors.

## What's an XA11?

Beats me. 4GB of RAM, two virtual CPUs.

## Experiments

In the format `CRAWLER_WORKERS` x `CRAWL_THREADS`.

- 4x10: Out of memory errors
- 3x10: Out of memory errors
- 2x10: Out of memory errors
- 1x15: Stable
- 1x20: Stable
- 1x30: Stable
- 1x40: Stable
- 1x80: Stable
- 1x160: Stable
- 1x320: ...