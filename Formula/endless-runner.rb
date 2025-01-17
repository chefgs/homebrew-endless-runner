class EndlessRunner < Formula
    include Language::Python::Virtualenv
    desc "Endless Runner Game"
    homepage "https://github.com/chefgs/endless-runner"
    url "https://github.com/chefgs/endless-runner/releases/download/release-v2.0.0/endless-runner.tz"
    sha256 "c4acb9b713287f28d5a162854a3bd4607dd930c79e53a8cbff77e36f45017582"

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