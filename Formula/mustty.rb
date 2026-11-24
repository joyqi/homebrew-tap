class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.7/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "cc7d3a187bdf82cf0b8e51563abacb08e4f725c24163f21ca03d7cc2b33cc99b"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.7/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "41eabe16cb0ffff310eca2a70e1a2a4a9684ab12e8b02d120a6223413e15a418"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.7/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4c58ac74b54b4dfa5a72d2337b325e753153659e83e5eea3cbeba68cfbabf4e"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.7/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "747ee75fb5b375bec770f7ad82a66b97403e106cd15406a91719ba65a656b2e3"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
