#
# DO NOT EDIT THIS FILE MANUALLY
#
class BeachCli < Formula
  desc "Command line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  url "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-0.9.1.phar"
  sha256 "3666542bea7bbfd34994daebe6d854db1df6b189b27adac4c9a4ddf384f13c0a"

  head "https://storage.googleapis.com/cli-tool.beach.flownative.cloud/beach-master.phar"

  bottle :unneeded

  def install
    system "php", buildpath/"beach-0.9.1.phar", "localbeach:prepare", "#{lib}/beach-cli/localbeach", "~/Library/Application Support/Flownative/Local Beach/MariaDB"
    bin.install "beach-0.9.1.phar" => "beach"
  end

  plist_options :manual => "beach localbeach:start"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>RunAtLoad</key>
      <true/>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/beach</string>
        <string>localbeach:start</string>
      </array>
    </dict>
  </plist>
  EOS
  end
end
