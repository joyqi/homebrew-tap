class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.0/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "4800bb281020ea3a33e34e0fa315674fca194997171f5b25380c7c32aa1eb39c"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.0/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "2745505900cb7430969ad94ee8eb488b070461529427c64491f13377bc316e8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.0/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48745c3bf14c85c53f349d7b242a426464bdfeaeefa7bc2f4ac1a0829fb01bb8"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.0/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "419030a92368f459a9422c8b4f1c32255d557b16ea709e2e354d00528268e1fb"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
