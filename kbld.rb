class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.18.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.18.0/kbld-darwin-amd64"
    sha256 "39751dc1b2cae5c9f64f342732083ae503bd5e8d44a6b3ffeaeb3ac3b97fdb4c"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.18.0/kbld-linux-amd64"
    sha256 "d949a139b0fe803ff2fafa4ff96bc49917eeda88f79516ebf34617b872ce19ec"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
