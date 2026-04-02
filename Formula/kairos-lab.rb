class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.0.0-alpha1/kairos-lab_0.0.0-alpha1_darwin_arm64.tar.gz"
      sha256 "8042cb46194d0de7b0f41fb5af498ab42e9d771697bc151b866dac32c7f4bd10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.0.0-alpha1/kairos-lab_0.0.0-alpha1_linux_amd64.tar.gz"
      sha256 "cddfe22a70d5d76ac508711a495053fc460d929546f27ca7da43b56658a61772"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.0.0-alpha1/kairos-lab_0.0.0-alpha1_linux_arm64.tar.gz"
      sha256 "3fd7cf4c68be4821cbc4f01a0daf8176c160d25bcbe307d4dbe910231c8788d9"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
