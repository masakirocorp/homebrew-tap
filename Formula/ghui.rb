class Ghui < Formula
  desc "Terminal UI for GitHub pull requests"
  homepage "https://github.com/masakirocorp/ghui"
  version "0.10.0-masakiro.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-arm64.tar.gz"
      sha256 "06454ff894c98355ead446b43ebabc9b98af2ed1839c4d8093567441cc71804e"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-x64.tar.gz"
      sha256 "0695aa987e4ed9f6d57971b5de576a32ef3112950ee72926abd7aceca538a00e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-arm64.tar.gz"
      sha256 "49dd1b56452cbb9127c42a87cfc76ec3271467f128ea3c4651be2ff481250771"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-x64.tar.gz"
      sha256 "754e5ab27a5ea9639b738669253a9806bfcc89db95dd548fe3a1c37b27acdbc1"
    end
  end

  def install
    bin.install "ghui"
    prefix.install "LICENSE"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ghui --version").strip
  end
end
