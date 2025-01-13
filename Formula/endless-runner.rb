class EndlessRunner < Formula
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/archive/refs/tags/release-v1.1.tar.gz"
    sha256 "504952f1d8a96893235a27336d6bf3dcab3728baecb39981d581511d3e3620d7"
    
    def install
        bin.install "endless-runner-stickman.py"
    end
    
    test do
        system "#{bin}/endless-runner-stickman.py", "--version"
    end
end