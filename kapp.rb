class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.26.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.26.0/kapp-darwin-amd64"
    sha256 "41104f4b402906046a493463b4363aa3e8cf3e6477e00d85f85333b88e52c2b2"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.26.0/kapp-linux-amd64"
    sha256 "7c4d525b02e0241dab13fd729735875ea2b15e2f504bd94d1480edd3072ccf96"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
