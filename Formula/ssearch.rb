class Ssearch < Formula
  desc "Semantic search on the command line"
  homepage "https://github.com/basictofu/ssearch"
  url "https://github.com/basictofu/ssearch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "70f2cb1a6396b9af8d21f9ee56902f72549656eac8e02aa546b4834d4a6424f7"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "ssearch", "-h"
  end
end