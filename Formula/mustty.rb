class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.1/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "2e896c85ffe61c1095019197f61e34bf816e09931deb30563685528d480b04b0"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.1/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "e1d2f323b5c291634e43aceb8cd0e0498f22c794441e1c5ea9299c0d3740bc48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.1/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e4ec388315c860eeacc40e08d9828a779d276f39524f270c57c80d938891d99"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.1/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b29b4f4ab7bd4dfc769d0a0c2ed8d997660bc0094d1dd49a4ff5392934f1df9"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
