cask "choux@rc" do
  version "0.1.0-rc.2"
  sha256 "17bb19cadb16e5afa4a6766651f8393413e29881303eaadf2588ad7510526d1f"

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