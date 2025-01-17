class EndlessRunner < Formula
    include Language::Python::Virtualenv
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/releases/download/release-v2.0.0/endless-runner.tz"
    sha256 "c4acb9b713287f28d5a162854a3bd4607dd930c79e53a8cbff77e36f45017582"
    depends_on "python@3.9"
    def install
        virtualenv_install_with_resources
        bin.install "endless-runner-stickman-sounds.py"
    end
    
    test do
        system "#{bin}/endless-runner-stickman-sounds.py", "--version"
    end
end