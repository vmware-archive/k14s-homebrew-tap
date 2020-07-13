class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.31.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.31.0/kapp-darwin-amd64"
    sha256 "081f8428236ecd2c432819b6cf606f3284ab77f9636cbe9df4c3b2b852595dab"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.31.0/kapp-linux-amd64"
    sha256 "9039157695a2c6a6c768b21fe2550a64668251340cc17cf648d918be65ac73bd"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
