class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.3.0"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.3.0/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "b5931fb1876aeba27dab0f7ef2e208e7785ced57766d12579dca998a93df073c"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.3.0/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
