# pty-server/homebrew-tap

Homebrew tap for [choux](https://github.com/pty-server/choux), the native desktop client for the ptys session server.

## Install

```bash
brew install --cask pty-server/tap/choux
```

Release candidates:

```bash
brew install --cask pty-server/tap/choux@rc
```

Apple Silicon only. On an Intel Mac Homebrew refuses with an architecture error rather than downloading the artifact.

The two casks install the same `choux.app` and therefore conflict; uninstall one before installing the other.

## Casks

| Cask | Channel | Description |
| --- | --- | --- |
| `choux` | stable releases | Native desktop client for the ptys session server |
| `choux@rc` | prereleases | Release candidate builds |

## Updating

Both casks are bumped automatically by the `Update Homebrew tap` workflow in the choux repository when a choux release is published. The workflow picks the cask from the release's prerelease flag: a prerelease bumps `choux@rc`, a normal release bumps `choux`. It rewrites only the `version` and `sha256` lines.

Because the channels are independent, `choux@rc` keeps pointing at the last release candidate until a new one ships, even after a stable release.

To bump by hand:

```bash
version=0.1.0
url="https://github.com/pty-server/choux/releases/download/v$version/choux_${version}_aarch64.dmg"
curl -sL "$url" | shasum -a 256
```

Then edit `version` and `sha256` in the relevant cask and run:

```bash
brew audit --cask --strict --online pty-server/tap/choux
```