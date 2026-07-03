class Trelly < Formula
  desc "Fast Trello CLI with multi-profile auth, MCP server, and kanban TUI"
  homepage "https://github.com/brandonkramer/trelly"
  url "https://registry.npmjs.org/trelly/-/trelly-0.3.0.tgz"
  sha256 "d0a457f7770420a1bf60ad40fb34ce2e57db79745dd6934209006c97f27121ed"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/trelly/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trelly --version")
  end
end
