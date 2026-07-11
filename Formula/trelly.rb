class Trelly < Formula
  desc "Fast Trello CLI with multi-profile auth, MCP server, and kanban TUI"
  homepage "https://github.com/brandonkramer/trelly"
  url "https://registry.npmjs.org/trelly/-/trelly-0.3.3.tgz"
  sha256 "b06905859aa609157ce312f44cf5bbdd2ad42b8a32d71c7f41d823c1a8aeb1e5"
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
