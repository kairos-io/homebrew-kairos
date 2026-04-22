class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.3/kairos-lab_0.1.3_darwin_arm64.tar.gz"
      sha256 "50a6b0fb06c4c39e5795d3f08666746d840e0df6ff28408ca1ac89a202b97b48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.3/kairos-lab_0.1.3_linux_amd64.tar.gz"
      sha256 "b09c804ff7d2aec850f1a0a330dcbb413ed3b6ce1c4efafb5d5f4a83bc4222a8"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.3/kairos-lab_0.1.3_linux_arm64.tar.gz"
      sha256 "3f4913ef4e96711299d4a11b2777626ea578c4681a155bf6b8f9afe6433d2c06"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
