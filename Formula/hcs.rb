class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.1"
  license "MIT"
        
  if OS.mac?
    url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.1/hcs-darwin-amd64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux?
    url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.1/hcs-linux-amd64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end
        
  def install
    bin.install "hcs"
  end
        
  test do
    system "#{bin}/hcs", "--version"
  end
end
