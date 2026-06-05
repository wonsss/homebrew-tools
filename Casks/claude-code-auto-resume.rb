cask "claude-code-auto-resume" do
  version "0.1.0"
  sha256 "8eeb44f41e10a4e764a69518a6cb073c45679994a9860ed5f450da072419574d"

  url "https://github.com/wonsss/claude-code-auto-resume/releases/download/v#{version}/claude-code-auto-resume-v#{version}-macos-universal.tar.gz"
  name "claude-code-auto-resume"
  desc "Safely auto-resume Claude Code after session limits using tmux"
  homepage "https://github.com/wonsss/claude-code-auto-resume"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "claude-code-auto-resume-v#{version}-macos-universal/cc-auto", target: "cc-auto"

  caveats <<~EOS
    cc-auto controls Claude Code through tmux.
    If tmux is not installed, install it separately:
      brew install tmux
  EOS

  zap trash: "~/.local/state/cc-auto"
end
