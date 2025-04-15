class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v1.2.3"
  license "MIT" # or whatever you use

  if OS.mac?
    url "https://github.com/omniscient-public/hcs-binaries/releases/download/v1.2.3/hcs-darwin-amd64.tar.gz"
    sha256 "<SHA_FOR_MAC_BINARY>"
  elsif OS.linux?
    url "https://github.com/omniscient-public/hcs-binaries/releases/download/v1.2.3/hcs-linux-amd64.tar.gz"
    sha256 "<SHA_FOR_LINUX_BINARY>"
  end

  def install
    bin.install "hcs"
  end

  test do
    system "#{bin}/hcs", "--version"
  end
end

