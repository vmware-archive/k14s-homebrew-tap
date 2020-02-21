class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.7.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.7.0/vendir-darwin-amd64"
    sha256 "8c753b9efda146171b511c6e8d9964c8dee7dd43320d468e600f47413d990287"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.7.0/vendir-linux-amd64"
    sha256 "58c09e2b22e8bc2136534405f5e76a544cfac3a57d165670ab3fcfb18cb3e604"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
