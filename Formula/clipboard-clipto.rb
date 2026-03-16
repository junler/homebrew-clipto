class ClipboardTool < Formula
  desc "Clipboard manager built with Tauri"
  homepage "https://github.com/yourname/clipboard-tool"

  url "https://github.com/junler/clipto/releases/download/v0.1.0/clipto_0.1.0_aarch64.dmg"
  sha256 "0f479eae04aba43c4b735612833d49a4a82b123cfc2fc162aab568d38322eb62"
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      To install the app run:

      open #{prefix}/clipto.app
    EOS
  end
end