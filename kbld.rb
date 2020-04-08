class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.20.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.20.0/kbld-darwin-amd64"
    sha256 "3b6b9a66c1307cae48fdf066b6b713550ad5db7cdb41c3bdefffb92a486ae3d7"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.20.0/kbld-linux-amd64"
    sha256 "a0e7dd4072587aa26db59a74bb2aadeee55ab5d285dd0544cb8eaff11821ed33"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
