class EndlessRunner < Formula
    include Language::Python::Virtualenv
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/releases/download/release-v2.0.0/endless-runner.tz"
    sha256 "5ebaf7a09c0aef2da33933a61e53c4a51356650ab459735bf833485ab8863545"
    depends_on "python@3.9"
    def install
        virtualenv_install_with_resources
        bin.install "endless-runner-stickman-sounds.py"
    end
    
    test do
        system "#{bin}/endless-runner-stickman-sounds.py", "--version"
    end
end