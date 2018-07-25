class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach.phar"
  version 1.0.0
  sha256 "251404e6dad16e2d6fe7b70412d3f97f79e8878202974187f0d53915d10693e6"

  bottle :unneeded

  def install
    bin.install "beach.phar" => "beach"
  end
end
