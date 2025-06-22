class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.4"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.4/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "250f8a1ff8ea9e6c6491d66f5832840c20082670b6d1de313340c58969434747"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.4/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
