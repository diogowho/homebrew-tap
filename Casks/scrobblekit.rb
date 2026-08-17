cask "scrobblekit" do
  arch arm: "arm64"

  version "v1.0-rc.2"
  sha256 "ef98c5ffd18ff2599f1622ea4277f1be860e32e62c00c44a620e7dbe2a7633fd"

  url "https://github.com/diogowho/ScrobbleKit/releases/download/#{version}/ScrobbleKit.dmg"
  name "ScrobbleKit"
  desc "Open-Source Last.fm scrobbler"
  homepage "https://github.com/diogowho/ScrobbleKit"

  depends_on macos: :tahoe

  app "ScrobbleKit.app"

  uninstall quit: "net.diogocastro.ScrobbleKit"

  zap trash: "~/Library/Preferences/net.diogocastro.ScrobbleKit.plist"
end
