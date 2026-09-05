class Ghui < Formula
  desc "Terminal UI for GitHub pull requests"
  homepage "https://github.com/masakirocorp/ghui"
  version "0.10.0-masakiro.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-arm64.tar.gz"
      sha256 "7197ea5a6efbbc251939ddc63dbf3596c107ebc4edd528ed209fca5b7e3422ed"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-x64.tar.gz"
      sha256 "32f392ab7b18aedce3092f1f92e1143d9a4c15950bdbda279982a94f20ef0e40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-arm64.tar.gz"
      sha256 "6bcce77e63301e9963c61a74490c2e6f39c0bb3935eba697d35d32bc14881be3"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-x64.tar.gz"
      sha256 "aa15426a61543fd0e2e834e68df612e417e22f80c8314998d3397a0dc43d91a9"
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
