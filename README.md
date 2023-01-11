# Rust - Docker mod for mold

This mod adds Rust to mold, to be installed/updated during container start.

In mold docker arguments, set an environment variable `DOCKER_MODS=linuxserver/mods:mold`

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=linuxserver/mods:mold|linuxserver/mods:code-server-mod2`

> Compared to [install-build-deps](https://github.com/rui314/mold/blob/main/install-build-deps.sh), I also made `apt-get install build-essential` 
```
docker run --privileged -e DOCKER_MODS=hzgood/mold -p $port:8443 -e SUDO_PASSWORD=1 \
  -v /Users/huangzheng/Container/workspace:/config/workspace/ \
  -v /Users/huangzheng/Container/lists:/var/lib/apt/lists/ \
  linuxserver/code-server
```