class EndlessRunner < Formula
    include Language::Python::Virtualenv
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/archive/refs/tags/release-v1.1.tar.gz"
    sha256 "d246a4fbff01676c62a1d2c077e6a2ca161734ed914c4efb2b2de4dd0e0213dc"
    depends_on "python@3.9"
    def install
        virtualenv_install_with_resources
        bin.install "endless-runner-stickman.py"
    end
    
    test do
        system "#{bin}/endless-runner-stickman.py", "--version"
    end
end