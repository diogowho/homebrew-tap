cask "scrobblekit" do
  arch arm: "arm64"

  version "v1.0-rc.2"
  sha256 "350c1e86bf8ee6eb3e96538edd86ed1c4a5b479743eeea02eb06539a2229bfbe"

  url "https://github.com/diogowho/ScrobbleKit/releases/download/#{version}/ScrobbleKit.zip"
  name "ScrobbleKit"
  desc "Open-Source Last.fm scrobbler"
  homepage "https://github.com/diogowho/ScrobbleKit"

  depends_on macos: :tahoe

  app "ScrobbleKit.app"

  uninstall quit: "net.diogocastro.ScrobbleKit"

  zap trash: "~/Library/Preferences/net.diogocastro.ScrobbleKit.plist"
end
