class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.1/netcup_0.1.1_darwin_arm64.tar.gz"
      sha256 "697a68b247fece90ec89902beda39e3e957939dc00be0cdcd9c85c496e940a2c"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.1/netcup_0.1.1_darwin_amd64.tar.gz"
      sha256 "a45aa7c20ddea40fc88739b26bf0ce1f38bb8fb5a39701ce6f29f72db54b5758"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.1/netcup_0.1.1_linux_arm64.tar.gz"
      sha256 "02e11454a7f85e7051c2e54c5f7f76ea47cfe1694af68e19626cf041b00fe54d"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.1/netcup_0.1.1_linux_amd64.tar.gz"
      sha256 "7296f18aa1e310836c2243cba07de10c35fe707143b51ddc743c6d933d0a2b1e"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
