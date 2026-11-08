class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.5/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "cd0b7226df9d85c94187d46eaf6406c409cdc70865325e6ff9e679154a013353"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.5/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "a92b873925dca7b0b3f87910af49c4d67fc410849983be59bf03d4195b174475"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.5/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c248c6670739ab0aa572d28b68d301eab77ccef0132e9baf72c841566b003bb8"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.5/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31fae3a60df657b60c73891b2c5a53ced7370248a1d115974e853d602ea3b9d8"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
