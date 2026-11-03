cask "refryt" do
  version "0.2.2"
  sha256 "ebc100b2d87a387ed6f59f7c5b3d7f2618d0424dcdbe322b7cb2a2f9812d7d75"

  url "https://github.com/gridoe/refryt/releases/download/v#{version}/refryt-#{version}-macos-arm64.dmg"
  name "Refryt"
  desc "Lightweight YouTube Music client"
  homepage "https://github.com/gridoe/refryt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Refryt.app"

  zap trash: [
    "~/Library/Application Support/refryt",
    "~/Library/Caches/io.github.gridoe.refryt",
    "~/Library/Caches/refryt",
    "~/Library/HTTPStorages/io.github.gridoe.refryt",
    "~/Library/Preferences/io.github.gridoe.refryt.plist",
    "~/Library/WebKit/io.github.gridoe.refryt",
  ]

  caveats <<~EOS
    Refryt is signed ad hoc and not notarised, so macOS refuses its first launch.
    Allow it once in System Settings > Privacy & Security, or run:
      xattr -cr /Applications/Refryt.app
  EOS
end
