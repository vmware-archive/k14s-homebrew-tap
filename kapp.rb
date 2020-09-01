class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.34.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.34.0/kapp-darwin-amd64"
    sha256 "61795970d69c530c134711e35fca35ef143176c9a32bf8dce9ef39b1bd0d3b75"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.34.0/kapp-linux-amd64"
    sha256 "e170193c40ff5dff9f9274c25048de1f50e23c69e8406df274fbb416d5862d7f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
