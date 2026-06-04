cask "mlxcontrol" do
  version "0.1.1"
  sha256 "95f2c19f9cb15bd4bef705c5e978684aadc477628cd65bfac967205521142023"

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
