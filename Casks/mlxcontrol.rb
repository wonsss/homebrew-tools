cask "mlxcontrol" do
  version "0.1.2"
  sha256 "5c3c5613d5729b49efb66ca341b7094dc1da6fb2443dc96ab57c788ded975b4e"

  url "https://github.com/wonsss/MLXControl/releases/download/v#{version}/MLXControl-#{version}.dmg"
  name "MLX Control"
  desc "Native macOS menu bar app to manage a local mlx-lm inference server"
  homepage "https://github.com/wonsss/MLXControl"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MLXControl.app"

  zap trash: [
    "~/Library/Application Support/io.github.wonsss.mlxcontrol",
    "~/Library/Preferences/io.github.wonsss.mlxcontrol.plist",
    "~/Library/Logs/MLXControl",
  ]
end
