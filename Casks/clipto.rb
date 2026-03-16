cask "clipto" do
  version "0.1.0"
  sha256 "0f479eae04aba43c4b735612833d49a4a82b123cfc2fc162aab568d38322eb62"

  url "https://github.com/junler/clipto/releases/download/v#{version}/clipto_#{version}_aarch64.dmg"
  name "Clipto"
  desc "Clipboard manager"
  homepage "https://github.com/junler/clipto"

  app "clipto.app"
end