cask "clipto" do
  version "0.2.1"

  if Hardware::CPU.arm?
    sha256 "7a1facd017b017780f251c6e392e879af57b6a96e6f7c0967abbf0ef7e12a917"
    url "https://github.com/junler/clipto/releases/download/v#{version}/clipto_#{version}_aarch64.dmg"
  else
    sha256 "7a1facd017b017780f251c6e392e879af57b6a96e6f7c0967abbf0ef7e12a917"
    url "https://github.com/junler/clipto/releases/download/v#{version}/clipto_#{version}_x64.dmg"
  end

  name "clipto"
  desc "Clipboard manager"
  homepage "https://github.com/junler/clipto"

  app "clipto.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/clipto.app"]
  end

  zap trash: [
    "~/Library/Application Support/clipto",
    "~/Library/Preferences/cc.junler.clipto.plist"
  ]
end