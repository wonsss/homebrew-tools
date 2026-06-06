cask "claude-code-auto-resume" do
  version "0.1.2"
  sha256 "57bbe00b7b89512e4155bd8f3e2fa61f093505bfbf6e5ed7404751f56b8bd6c5"

  url "https://github.com/wonsss/claude-code-auto-resume/releases/download/v#{version}/claude-code-auto-resume-v#{version}-macos-universal.tar.gz"
  name "claude-code-auto-resume"
  desc "Safely auto-resume Claude Code after session limits using tmux"
  homepage "https://github.com/wonsss/claude-code-auto-resume"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "claude-code-auto-resume-v#{version}-macos-universal/cc-auto", target: "cc-auto"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/claude-code-auto-resume-v#{version}-macos-universal/cc-auto"],
                   sudo: false
  end

  caveats <<~EOS
    cc-auto controls Claude Code through tmux.
    If tmux is not installed, install it separately:
      brew install tmux
  EOS

  zap trash: "~/.local/state/cc-auto"
end
