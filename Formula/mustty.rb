class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.6/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "e84ba52376517e0678518cb81e9c887f5214c06e136b04a9441b990eadc21cdb"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.6/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "6f26fbf686b036db0a920fc68eba5d0c219c6456c9b6c2a477642c746273f80b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.6/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "672655d60e69acc79b530ef83d79670d42413bdbfc4a1b5faafacb70b5fd29de"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.6/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c88c2e3d05aafdec0a97e8b3cca8b1c65afce593691ba61773e94f4612102c78"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
