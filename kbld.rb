class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.24.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.24.0/kbld-darwin-amd64"
    sha256 "480f45f62bad6af0518884f2e6234b0655fa30cc533dc9a4c336ea9376db2b16"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.24.0/kbld-linux-amd64"
    sha256 "63f06c428cacd66e4ebbd23df3f04214109bc44ee623c7c81ecb9aa35c192c65"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
