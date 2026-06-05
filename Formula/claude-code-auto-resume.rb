class ClaudeCodeAutoResume < Formula
  desc "Safely auto-resume Claude Code after session limits using tmux"
  homepage "https://github.com/wonsss/claude-code-auto-resume"
  url "https://github.com/wonsss/claude-code-auto-resume/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9d275e6e052104e5deed64b9c018f139b19ac37158e853d5fb494cd0bc96633e"
  license "MIT"

  depends_on :macos
  depends_on "tmux"
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--product", "cc-auto"
    bin.install ".build/release/cc-auto"
  end

  test do
    assert_match "claude-code-auto-resume", shell_output("#{bin}/cc-auto --help")
  end
end
