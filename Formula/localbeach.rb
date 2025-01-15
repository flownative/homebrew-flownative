# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/localbeach"
  version "1.20.1+1"
  license "GPL-3.0-or-later"

  depends_on "mkcert"
  depends_on "nss"

  on_macos do
    on_intel do
      url "https://github.com/flownative/localbeach/releases/download/v1.20.1+1/beach_darwin_amd64.zip"
      sha256 "7b8369c180f57a417948e05efac007df2e9821c9eed508c9572a4aac5e25004b"
    end
    on_arm do
      url "https://github.com/flownative/localbeach/releases/download/v1.20.1+1/beach_darwin_arm64.zip"
      sha256 "ab60061001e0be159e3dc1c73fdc6a638ec0f32dd4b7fca9915619c37b778b2a"
    end
  end

  on_linux do
    url "https://github.com/flownative/localbeach/releases/download/v1.20.1+1/beach_linux_amd64.zip"
    sha256 "8d384ad9a8691c3612610e350c65fab99123292f787ff7e8ab9ddd1764f6e20b"
  end

  def install
    bin.install "beach" => "beach"
  end

  def caveats
    <<~EOS
      Local Beach is built on top of Docker and Docker Compose.
      You will need a working setup of both in order to use Local Beach.
    EOS
  end

  test do
    assert_match "Local Beach v1.20.1+1", shell_output("#{bin}/beach version")
  end
end
