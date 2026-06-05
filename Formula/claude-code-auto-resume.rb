class ClaudeCodeAutoResume < Formula
  desc "Safely auto-resume Claude Code after session limits using tmux"
  homepage "https://github.com/wonsss/claude-code-auto-resume"
  url "https://github.com/wonsss/claude-code-auto-resume/releases/download/v0.1.0/claude-code-auto-resume-v0.1.0-macos-universal.tar.gz"
  sha256 "8eeb44f41e10a4e764a69518a6cb073c45679994a9860ed5f450da072419574d"
  license "MIT"

  depends_on :macos
  depends_on "tmux"

  def install
    bin.install "cc-auto"
  end

  test do
    assert_match "claude-code-auto-resume", shell_output("#{bin}/cc-auto --help")
  end
end
