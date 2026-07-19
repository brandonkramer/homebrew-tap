class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.2/netcup_0.2.2_darwin_arm64.tar.gz"
      sha256 "b7f94dd47274c9ed5a3a2a196b2c03caf764b071cab78b24fe718a254b7e581e"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.2/netcup_0.2.2_darwin_amd64.tar.gz"
      sha256 "abd907531cf06a709a7c9d63e542e7a6c58b4033dfb5db732420b6ef51478a1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.2/netcup_0.2.2_linux_arm64.tar.gz"
      sha256 "83ff35642b2e0a919acba1f2f59e9a4b9649665f048051fedc9de1ffd6a9051a"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.2/netcup_0.2.2_linux_amd64.tar.gz"
      sha256 "a1dcbcedf1a3516cc6e708fc5465abfb5b89af988d94c7a096edc463c4592750"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
