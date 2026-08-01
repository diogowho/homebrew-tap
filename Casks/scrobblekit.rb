cask "scrobblekit" do
  arch arm: "arm64"

  version "v1.0-rc.1"
  sha256 "fdbb32c690027a97dd441ec9e7ef20200c88ec773f899ef0c22119a2b1df752f"

  url "https://github.com/diogowho/ScrobbleKit/releases/download/#{version}/ScrobbleKit.zip"
  name "ScrobbleKit"
  desc "Open-Source Last.fm scrobbler"
  homepage "https://github.com/diogowho/ScrobbleKit"

  depends_on macos: :tahoe

  app "ScrobbleKit.app"

  uninstall quit: "net.diogocastro.ScrobbleKit"

  zap trash: "~/Library/Preferences/net.diogocastro.ScrobbleKit.plist"
end
