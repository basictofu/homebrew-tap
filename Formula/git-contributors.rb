# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitContributors < Formula
  desc "Show commit histograms in the terminal"
  homepage "https://github.com/basictofu/git-contributors"
  url "https://github.com/basictofu/git-contributors/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c36077eabb92dfb621b287cf3d05ac46ef0d2cdd498c520fac922cba6e276cb5"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-contributors`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "git", "contributors", "-h"
  end
end
