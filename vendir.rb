class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.8.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.8.0/vendir-darwin-amd64"
    sha256 "ae3ba30add41e209f98732b3c319cd1bd59fc5fdfc06e33d7a3e17c30f0569f8"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.8.0/vendir-linux-amd64"
    sha256 "6a9afd04835020b0901c19991f138e293be99d755a5db15bed8b4dfe34920c17"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
