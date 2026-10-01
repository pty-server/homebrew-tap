cask "choux@rc" do
  version "0.3.0-rc.5"
  sha256 "b37e4af0bcc876bc4f02fefbc5b1ae27b045b75d1816e3923672cb1a4c2a087b"

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