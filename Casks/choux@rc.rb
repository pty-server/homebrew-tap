cask "choux@rc" do
  version "0.0.0-rc.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/pty-server/choux/releases/download/v#{version}/choux_#{version}_aarch64.dmg"
  name "choux"
  desc "Release candidate builds of the native desktop client for ptys"
  homepage "https://github.com/pty-server/choux"

  conflicts_with cask: "pty-server/tap/choux"
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "choux.app"

  zap trash: [
    "~/Library/Application Support/dev.pty-server.choux",
    "~/Library/Caches/dev.pty-server.choux",
    "~/Library/Preferences/dev.pty-server.choux.plist",
    "~/Library/Saved Application State/dev.pty-server.choux.savedState",
  ]
end