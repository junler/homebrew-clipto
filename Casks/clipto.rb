cask "clipto" do
  version "0.2.0"

  if Hardware::CPU.arm?
    sha256 "dd58b62ff5c9f08b686878c732685121ff5f9c5fe75d655d3280621e2aad69d9"
    url "https://github.com/junler/clipto/releases/download/v#{version}/clipto_#{version}_aarch64.dmg"
  else
    sha256 "dd58b62ff5c9f08b686878c732685121ff5f9c5fe75d655d3280621e2aad69d9"
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