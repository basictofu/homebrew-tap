class GitContributors < Formula
  desc "Show commit histograms in the terminal"
  homepage "https://github.com/basictofu/git-contributors"
  url "https://github.com/basictofu/git-contributors/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c36077eabb92dfb621b287cf3d05ac46ef0d2cdd498c520fac922cba6e276cb5"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "git", "contributors", "-h"
  end
end
