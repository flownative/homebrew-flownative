# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  license "GPL-3.0-or-later"
  version "v1.3.0+1"

  if RUBY_PLATFORM.downcase.include?("darwin")
    url "https://github.com/flownative/localbeach/releases/download/v1.3.0+1/beach_darwin_amd64.zip"
    sha256 "7d077457dfc663177c85038c2394fe3817e0fef0c7bf6a1054741239f0df2420"
  else
    url "https://github.com/flownative/localbeach/releases/download/v1.3.0+1/beach_linux_amd64.zip"
    sha256 "751a06c63de337c5e6f3968327635326e13af5b69d53538622bab486314e24fa"
  end

  bottle :unneeded

  conflicts_with "flownative/flownative/beach-cli", because: "localbeach replaces beach-cli"

  depends_on "mkcert" => :run
  depends_on "nss" => :run

  def install
    database_path = RUBY_PLATFORM.downcase.include?("darwin") ? "~/Library/Application Support/Flownative/Local Beach/MariaDB" : "~/.Flownative/Local Beach/MariaDB"

    bin.install "beach" => "beach"
    system "#{bin}/beach", "setup", "--docker-folder", "#{lib}/localbeach", "--database-folder", database_path
  end

  def caveats
  <<~EOS
Local Beach is built on top of Docker and Docker Compose. You will need a working setup of both in order to use Local
Beach.
  EOS
  end
end
