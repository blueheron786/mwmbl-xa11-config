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

## After RAM sharing PR

- 4x100: Out of memory errors
- 4x10: Out of memory errors
- 3x10: Stable
- 3x300: Out of memory errors
- 3x200: Out of memory errors
- 2x200: Out of memory errors
- 1x320: Stable
- 1x640: Stable
- 1x1000: Stable
- 1x2000: Stable
- 2x10: Out of memory errors
- 1x10k: Runtime error, can't start new thread
- 1x5000: Runtime error, can't start new thread
- 1x3000: Runtime error, can't start new thread
- 1x1000: Runs, didn't check stability
- 1x2000: testing