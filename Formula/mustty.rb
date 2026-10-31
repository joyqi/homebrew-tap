class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.3/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "b21cfd9c54659ca39c8af95e4ccff4e64cfb421a14172e5870f3734108c339b5"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.3/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "0be3534306fb3b40b66ba005d0913a1666885c9777d5fc354464c17f85e6a2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.3/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7b8b512b7225b1b29f54ab79dd9a6a836902dbead47821d9e2bbacb9b787ca0"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.3/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9f1124fab8e2291f6ad32c92cc509bffca894bdb5e17b3c87929fcc17db04a4"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
