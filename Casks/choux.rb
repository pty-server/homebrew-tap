cask "choux" do
  version "0.2.2"
  sha256 "44cc3da8e2f64d323bb13bdfaedbe15dfd3b015017daea5e276ab9a352da1a9e"

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