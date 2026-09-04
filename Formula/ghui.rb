class Ghui < Formula
  desc "Terminal UI for GitHub pull requests"
  homepage "https://github.com/masakirocorp/ghui"
  version "0.10.0-masakiro.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-arm64.tar.gz"
      sha256 "b4082d89e735d1bd4319e29260dd7314040696a6a01a903c5b66af09ca1e8eff"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-x64.tar.gz"
      sha256 "83b12e2ea0ead07a3b3e91a45b07d427b6ae9e62b69ef9b41cc258b2d2e84d09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-arm64.tar.gz"
      sha256 "957fd132791fea824bf6f73ac43699abd65275018b8fc1d3f35b4614831ad278"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-x64.tar.gz"
      sha256 "60a0ee40fc8304a069eedf97c000cb21730d26b18ab51d55fe938d53fa5ddcf5"
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
