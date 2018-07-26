class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-0.2.0.phar"
  sha256 "9a0bfb984fd7fd0ae202cdbb19034926be7bb3c01a671247eca238950dfe5b75"

  bottle :unneeded

  def install
    bin.install "beach-0.2.0.phar" => "beach"
  end
end
