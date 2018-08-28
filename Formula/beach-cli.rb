#
# DO NOT EDIT THIS FILE MANUALLY
#
class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-0.2.10.phar"
  sha256 "192d6457cc139f954d09a130c8b78c95714d814e7c0d31e6e57aa28dc0974884"

  bottle :unneeded

  def install
    bin.install "beach-0.2.10.phar" => "beach"
    system "beach", "localbeach:prepare", "#{bin}/", "#{var}/localbeach"
  end
end
