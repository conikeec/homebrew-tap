class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.2"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.2/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "e22e03d8c55f20ab7403eeac0e9bc96c30653d8113925a881522569b75febb22"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.2/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
