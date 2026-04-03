class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.8/kairos-lab_0.1.0-rc.8_darwin_arm64.tar.gz"
      sha256 "8929eb2b23d5defb0dfe4f9f6ed4906eab111e5786b2e719a0665758f89d3207"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.8/kairos-lab_0.1.0-rc.8_linux_amd64.tar.gz"
      sha256 "f41e810e682ae8c411e321aee58ffe2296f7cffeceb71b6d23a4e7616fc4fb31"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.8/kairos-lab_0.1.0-rc.8_linux_arm64.tar.gz"
      sha256 "4c89fc5b74198e32324ea6633d1cd60c20110e15bfd746b478e5c98607387b75"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
