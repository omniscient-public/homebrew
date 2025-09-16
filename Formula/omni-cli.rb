class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "0.2.26"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/0.2.26/omni-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/0.2.26/omni-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/0.2.26/omni-linux-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/0.2.26/omni-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end
        
  def install
    bin.install "omni"
  end
        
  test do
    system "#{bin}/omni", "--version"
  end
end
