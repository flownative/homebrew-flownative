class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-0.2.1.phar"
  sha256 "76c45f3142c091c5185b983301b6eae8f4da8aefe32eea4bec18d82d27b6ca99"

  bottle :unneeded

  def install
    bin.install "beach-0.2.1.phar" => "beach"
  end
end
