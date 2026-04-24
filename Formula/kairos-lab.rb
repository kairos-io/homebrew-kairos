class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.4/kairos-lab_0.1.4_darwin_arm64.tar.gz"
      sha256 "f7abae2939f8205aed95cb7bf2d7999e16721c96f405504d017aca2e0cd6dedc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.4/kairos-lab_0.1.4_linux_amd64.tar.gz"
      sha256 "e0a4406ca8059de1f7bea20e52eb84f2b74c642f1ebb40472eb4243d428dbf28"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.4/kairos-lab_0.1.4_linux_arm64.tar.gz"
      sha256 "699f69e037e4add9f5a0cedd894ece78cfdacc66848f9fdddc1320299e564d34"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
