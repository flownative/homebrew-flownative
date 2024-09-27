# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/localbeach"
  version "1.18.0+4"
  license "GPL-3.0-or-later"

  depends_on "mkcert"
  depends_on "nss"

  on_macos do
    on_intel do
      url "https://github.com/flownative/localbeach/releases/download/v1.18.0+4/beach_darwin_amd64.zip"
      sha256 "bb36a2ae9f294e6ea576b323f86d572a974bcd2165a61658154fcd4b534b3a40"
    end
    on_arm do
      url "https://github.com/flownative/localbeach/releases/download/v1.18.0+4/beach_darwin_arm64.zip"
      sha256 "22263b383019c9aafde8c465a2f6a95fffa25c51cf2b56f585b83215e425a7b8"
    end
  end

  on_linux do
    url "https://github.com/flownative/localbeach/releases/download/v1.18.0+4/beach_linux_amd64.zip"
    sha256 "fa9497e6d9a9d03cb20ac44c9a49196b761abf864ef0d8edcdb14cb9b1892dbf"
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
    assert_match "Local Beach v1.18.0+4", shell_output("#{bin}/beach version")
  end
end
