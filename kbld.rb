class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.23.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.23.0/kbld-darwin-amd64"
    sha256 "4414bac258a53b62224ee50a50624dfd3b136e9e5a4170134d20917f6e11678a"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.23.0/kbld-linux-amd64"
    sha256 "2367d6376c2d3a5a08d6d780d9721829abbfee13d3e9301271b166e90e472d15"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
