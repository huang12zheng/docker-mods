# Rust - Docker mod for code-server/openvscode-server

This mod adds Rust to code-server/openvscode-server, to be installed/updated during container start.

In code-server/openvscode-server docker arguments, set an environment variable `DOCKER_MODS=linuxserver/mods:code-server-rust`

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=linuxserver/mods:code-server-rust|linuxserver/mods:code-server-mod2`

> Notice, instead, make `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh` **to**
> curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y