class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.4/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "1ac1eb129078628d087aa2329792ba24ba0dd0427ff91435fb19d2bf8abc4b23"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.4/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "5d87fce4fb4fe4d105ff68b7e6fd230332e86517ede1e19d9e6e1cde4a0b0db0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.4/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "14fdb42d5c23fce8f8542d7a0dec9367756e9565bce7a878f66aca605b9f9262"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.4/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23acf309f6c3170db72ca9788cea6eba4c27b147fc1117913d6b4795487dee49"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
