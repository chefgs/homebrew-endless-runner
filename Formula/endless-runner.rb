class EndlessRunner < Formula
    include Language::Python::Virtualenv
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/releases/download/release-v2.0.0/endless-runner.tar.gz"
    sha256 "9b3528a10b0babed2b39f2e670e1f1b07c97ab9afdcccabd2328d78fe3cde55f"

    license "MIT"

    depends_on "python@3.11"
  
    def install
      # Install dependencies (if any) and copy the script to bin
      system "pip3", "install", "pygame" # Add any other dependencies as needed
      bin.install "endless-runner-stickman-sounds.py" => "endless-runner"
    end
  
    test do
      # Verify that the installed script works
      assert_match "Usage", shell_output("#{bin}/endless-runner --help", 2)
    end
  end