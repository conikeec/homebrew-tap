class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.1"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.1/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "d4cafe84f68a08d76215993896e56e1488a7eced0f9161c44b60e79c1e413cd2"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.1/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
