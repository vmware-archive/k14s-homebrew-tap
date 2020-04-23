class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.25.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.25.0/kapp-darwin-amd64"
    sha256 "e021f9ba9a1398b502e8e4146d695fb79c1f1f975136a9c3ec0a2b29a2bfcaf5"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.25.0/kapp-linux-amd64"
    sha256 "044a8355c1a3aa4c9e427fc64f7074b80cb759e539771d70d38933886dbd2df4"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
