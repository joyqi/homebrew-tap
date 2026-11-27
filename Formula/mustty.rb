class Mustty < Formula
  desc "Distraction-free Markdown writer for the terminal"
  homepage "https://github.com/joyqi/mustty"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.8/mustty-aarch64-apple-darwin.tar.gz"
      sha256 "95bd32c829233d11f123951da5edf10f2c1c930d0c1b448861933b4ba2715ff2"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.8/mustty-x86_64-apple-darwin.tar.gz"
      sha256 "48f99b5fce8da953583400a5d26b3dd2facb87758ffbce77c722760251a46e82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.8/mustty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1538b47717b2667f74138582d476adeb44380116be1b4cda762b62f207975b9f"
    end
    on_intel do
      url "https://github.com/joyqi/mustty/releases/download/v0.1.8/mustty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63ae80630656788f473e19d2f4572a6b1cc9b6788d9081fd5fa0e1294d8c85be"
    end
  end

  def install
    bin.install "mustty"
  end

  test do
    assert_match "mustty #{version}", shell_output("#{bin}/mustty --version")
  end
end
