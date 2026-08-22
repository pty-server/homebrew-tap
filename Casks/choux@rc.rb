cask "choux@rc" do
  version "0.1.0-rc.5"
  sha256 "1cac1cd30a38a7afb44c918b6390267f5ef02c3027095f386d64ddb901f2dbd5"

  url "https://github.com/pty-server/choux/releases/download/v#{version}/choux_#{version}_aarch64.dmg"
  name "choux"
  desc "Release candidate builds of the native desktop client for ptys"
  homepage "https://github.com/pty-server/choux"

  livecheck do
    skip "Prerelease channel; version is bumped by the choux release workflow"
  end

  conflicts_with cask: "pty-server/tap/choux"
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "choux.app"

  zap trash: [
    "~/Library/Application Support/dev.pty-server.choux",
    "~/Library/Caches/dev.pty-server.choux",
    "~/Library/Preferences/dev.pty-server.choux.plist",
    "~/Library/Saved Application State/dev.pty-server.choux.savedState",
  ]
end