class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.12.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.12.0/vendir-darwin-amd64"
    sha256 "418dbd15eaded3c5c324ef8f13a98d2d023c10447e7465a739af5b9746afe5c4"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.12.0/vendir-linux-amd64"
    sha256 "3310669b39cd2095f9ff373fef479ed90c2eb75e3987f8e14e3779c59fa051c4"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
