cask "choux" do
  version "0.2.0"
  sha256 "f902f575686ba43fdb71b34c841460489e17d792caa3e8511f58a1e111c82538"

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