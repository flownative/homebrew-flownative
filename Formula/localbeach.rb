# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  license "GPL-3.0-or-later"
  version "refs/tags/v1.0.0-alpha18+11"

  if RUBY_PLATFORM.downcase.include?("darwin")
    url "https://github.com/flownative/localbeach/releases/download/refs/tags/v1.0.0-alpha18+11/beach_darwin_amd64.zip"
    sha256 "{{darwin_sha256sum}}"
  else
    url "https://github.com/flownative/localbeach/releases/download/refs/tags/v1.0.0-alpha18+11/beach_linux_amd64.zip"
    sha256 ""
  end

  bottle :unneeded

  conflicts_with "flownative/flownative/beach-cli", because: "localbeach replaces beach-cli"

  def install
    database_path = RUBY_PLATFORM.downcase.include?("darwin") ? "~/Library/Application Support/Flownative/Local Beach/MariaDB" : "~/.Flownative/Local Beach/MariaDB"

    bin.install "beach" => "beach"
    system "#{bin}/beach", "setup", "--docker-folder", "#{lib}/localbeach", "--database-folder", database_path
  end
end
