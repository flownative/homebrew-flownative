#
# DO NOT EDIT THIS FILE MANUALLY
#
class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-0.5.1.phar"
  sha256 "9f76b8f33b054f5084390dd32dc44c44971376fdffb0da5291a25c9b38b77ff3"

  head "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-master.phar"

  bottle :unneeded

  def install
    system "php", buildpath/"beach-0.5.1.phar", "localbeach:prepare", "#{lib}/beach-cli/localbeach", "~/Library/Application Support/Flownative/Local Beach/MariaDB"
    bin.install "beach-0.5.1.phar" => "beach"
  end
end
