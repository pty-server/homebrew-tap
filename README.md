# pty-server/homebrew-tap

Homebrew tap for [choux](https://github.com/pty-server/choux), the native desktop client for the ptys session server.

## Install

```bash
brew install --cask pty-server/tap/choux
```

Apple Silicon only. On an Intel Mac Homebrew refuses with an architecture error rather than downloading the artifact.

## Casks

| Cask | Description |
| --- | --- |
| `choux` | Native desktop client for the ptys session server |

## Updating

`Casks/choux.rb` is bumped automatically by the `Update Homebrew tap` workflow in the choux repository when a choux release is published. It rewrites only the `version` and `sha256` lines.

To bump by hand:

```bash
version=0.1.0
url="https://github.com/pty-server/choux/releases/download/v$version/choux_${version}_aarch64.dmg"
curl -sL "$url" | shasum -a 256
```

Then edit `version` and `sha256` in `Casks/choux.rb` and run:

```bash
brew audit --cask --strict --online pty-server/tap/choux
```