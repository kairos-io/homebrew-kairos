class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.10/kairos-lab_0.1.0-rc.10_darwin_arm64.tar.gz"
      sha256 "684a84b911f969e91e1fbbd262503baedc5be52667dd27e8057aab892e95b1a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.10/kairos-lab_0.1.0-rc.10_linux_amd64.tar.gz"
      sha256 "7d02182a54c14f44522111ed4e8c4387d0c380944a57cc285ed8e145a5039c9d"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.10/kairos-lab_0.1.0-rc.10_linux_arm64.tar.gz"
      sha256 "e445f7b4dc9d13e13362b5e9c614473f568fa3ad9ebcefa1cef403af42ee7d1a"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
