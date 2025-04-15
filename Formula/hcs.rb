class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.2"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-darwin-amd64.tar.gz"
      sha256 "90f3181fd726b3311d5c37fac56df6ecde2bcd2b22205308312877fc3840e414"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-darwin-arm64.tar.gz"
      sha256 "0c86a4153d70cbe661c65fe6ad1ec8041d233dc201bd268de2c4a731f9203971"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-linux-amd64.tar.gz"
      sha256 "cca4dd19173004bbf5df0fe1970e79490a9621ffbcee48eeb9e148eb93a61c90"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-linux-arm64.tar.gz"
      sha256 "b5065999dba45fa1f98713bcaeb14c09bed005390f32ca5d709c913fc9f153b0"
    end
  end
        
  def install
    bin.install "hcs"
  end
        
  test do
    system "#{bin}/hcs", "--version"
  end
end
