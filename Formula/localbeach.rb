# frozen_string_literal: true

#
# DO NOT EDIT THIS FILE MANUALLY
#
class Localbeach < Formula
  desc "Command-line tool for Flownative Beach"
  homepage "https://www.flownative.com/localbeach"
  version "1.19.3+1"
  license "GPL-3.0-or-later"

  depends_on "mkcert"
  depends_on "nss"

  on_macos do
    on_intel do
      url "https://github.com/flownative/localbeach/releases/download/v1.19.3+1/beach_darwin_amd64.zip"
      sha256 "e94f6c9edc4d9abbdbf40aa19579f4b66c1e1a572344d9db7c6b3314a50daf8f"
    end
    on_arm do
      url "https://github.com/flownative/localbeach/releases/download/v1.19.3+1/beach_darwin_arm64.zip"
      sha256 "74529f9ff8f1172759461b05788d6dc6b77fde207207c6342b1025d1f46bf006"
    end
  end

  on_linux do
    url "https://github.com/flownative/localbeach/releases/download/v1.19.3+1/beach_linux_amd64.zip"
    sha256 "f0cffe1021f91a76ecc137e9696c91f246cbb7b011ecb6bdc07dbfc2f6d5b73b"
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
    assert_match "Local Beach v1.19.3+1", shell_output("#{bin}/beach version")
  end
end
