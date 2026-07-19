class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.0/netcup_0.2.0_darwin_arm64.tar.gz"
      sha256 "77c845ac98e815ccbad32c53bd74a37e3254fda761ac80b2e86e0569d6f4c528"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.0/netcup_0.2.0_darwin_amd64.tar.gz"
      sha256 "1bcb04ad4b79d833e9c1b2a1c813d7fc63b97f9623c8ad95029f1bcb575b2618"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.0/netcup_0.2.0_linux_arm64.tar.gz"
      sha256 "ff69aace0c3d9ec83781cffe19b28e444f2ee6f87239c63a864bd1b72c800ec2"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.0/netcup_0.2.0_linux_amd64.tar.gz"
      sha256 "7630f357e684fb15b0f011b248c2b651fb15cb1562ad0084eccf0154d3c8722f"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
