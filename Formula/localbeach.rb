# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/beach"
  license "GPL-3.0-or-later"
  version "v1.17.2.+2"

  if RUBY_PLATFORM.downcase.include?("darwin")
    url "https://github.com/flownative/localbeach/releases/download/v1.17.2.+2/beach_darwin_amd64.zip"
    sha256 "9f35a9a0f31475ee415cf0f1e1d8a3895b7b64857ca6be2f5c408eb7d0721af1"
  else
    url "https://github.com/flownative/localbeach/releases/download/v1.17.2.+2/beach_linux_amd64.zip"
    sha256 "ff3472d559ba4e4a451f6f3db48be69ee69dc8fa51aeaf2277742222bae80cf4"
  end

  depends_on "mkcert" => :run
  depends_on "nss" => :run

  def install
    bin.install "beach" => "beach"
  end

  def caveats
  <<~EOS
Local Beach is built on top of Docker and Docker Compose. You will need a working setup of both in order to use Local
Beach.
  EOS
  end
end
