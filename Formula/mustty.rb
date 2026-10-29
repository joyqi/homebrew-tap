class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.2/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "624fef54401c2a87fd1d23cd20dee251ea1194267f17155fe0e0002f053c680c"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.2/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "5c22e84039ea71d5442ffa69940c6a6adc43d932fce18b815ccfe5d04be7fbef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.2/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "209e96e72da2acc48d0f34215584de35e3e62f778b52b21aab0c44104f916b87"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.2/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da31e00f5d1627fcf91c9d07a69e6e18314f7de653c696d5200e673a7f2a98ac"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
