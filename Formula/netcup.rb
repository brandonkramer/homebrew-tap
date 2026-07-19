class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.2/netcup_0.1.2_darwin_arm64.tar.gz"
      sha256 "5c6caba7a00a09b48e36b4170db0e634cd8a779ff8098c9fa7c35e33cbc87246"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.2/netcup_0.1.2_darwin_amd64.tar.gz"
      sha256 "9fa6b1e369487909c540cca917fee5dbcbd723eb3713aabc465cf3d351992d4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.2/netcup_0.1.2_linux_arm64.tar.gz"
      sha256 "77c9bf1af1b677d2a8794b3e9699d41283f15babf77fc5618e91b6e53d577388"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.2/netcup_0.1.2_linux_amd64.tar.gz"
      sha256 "316ee695eb40e0b8c3ab06bb4275e591f09a5493cba3ae58efd05f05877206be"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
