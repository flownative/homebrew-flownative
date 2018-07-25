class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://beach.flownative.com/cli/download"
  sha256 "251404e6dad16e2d6fe7b70412d3f97f79e8878202974187f0d53915d10693e6"

  bottle :unneeded

  def install
    bin.install "beach.phar" => "beach"
  end
end
