cask "choux" do
  version "0.2.1"
  sha256 "9f1ae5a08e5693b461312f7ef2700143819a7276069bdefdceed2f5607c585af"

  url "https://github.com/pty-server/choux/releases/download/v#{version}/choux_#{version}_aarch64.dmg"
  name "choux"
  desc "Native desktop client for the ptys session server"
  homepage "https://github.com/pty-server/choux"

  livecheck do
    url :url
    strategy :github_latest
  end

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