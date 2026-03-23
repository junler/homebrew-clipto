cask "clipto" do
  version "0.2.2"

  if Hardware::CPU.arm?
    sha256 "e5281c59e3007bde2184b2a9e25b4951cc2be5cf2c5bce1da083d52584f7120b"
    url "https://github.com/junler/clipto/releases/download/v#{version}/clipto_#{version}_aarch64.dmg"
  else
    sha256 "e5281c59e3007bde2184b2a9e25b4951cc2be5cf2c5bce1da083d52584f7120b"
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