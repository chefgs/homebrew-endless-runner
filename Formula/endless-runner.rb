class EndlessRunner < Formula
  include Language::Python::Virtualenv
  desc "Endless Runner Game"
  homepage "https://github.com/chefgs/endless-runner"
  url "https://github.com/chefgs/endless-runner/releases/download/release-v2.0.0/endless-runner.tar.gz"
  sha256 "9b3528a10b0babed2b39f2e670e1f1b07c97ab9afdcccabd2328d78fe3cde55f"
  license "MIT"
  depends_on "python@3.11"
  depends_on "py2app" => :build

  def install
    # Install dependencies
    system "pip3", "install", "pygame"

    # Build the application bundle
    system "python3", "setup.py", "py2app"

    # Install the application bundle
    prefix.install "dist/endless-runner-stickman-sounds.app"
  end

  test do
    # Verify that the application bundle exists
    assert_predicate prefix/"endless-runner-stickman-sounds.app", :exist?
  end
end