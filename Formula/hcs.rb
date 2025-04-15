class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.2"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-darwin-amd64.tar.gz"
      sha256 "59cc6511a8dcbe02ac6cac8cfa818ed529ccf89785d01fcf50803032cab00369"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-darwin-arm64.tar.gz"
      sha256 "1ff2714cb9283ed48e53424f05f766ace115fd6f49935d4b551d752a6c4b602e"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-linux-amd64.tar.gz"
      sha256 "5b4339470fcb91c5693ae612f558aa2c455b03b82592e656997922fcf4995a0f"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.2/hcs-linux-arm64.tar.gz"
      sha256 "87b5ecdf32108664fd24a99093a1f6a49ba50634777ac30b89725d3dac72b8ad"
    end
  end
        
  def install
    bin.install "hcs"
  end
        
  test do
    system "#{bin}/hcs", "--version"
  end
end
