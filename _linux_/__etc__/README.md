# /etc

Maintain `/etc` structure from this directory for packages and follow stow commands like common platform stow packages.

As root use sudo:

```bash
sudo stow -v --no-folding --target /etc <package>
```