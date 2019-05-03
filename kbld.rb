class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.4.0"
  url "https://github.com/k14s/kbld/releases/download/v0.4.0/kbld-darwin-amd64"
  sha256 "6aa3deefd419daf93bc0f9a4c36f9f5a087b3412ca676b2fce6e42b02d863150"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
