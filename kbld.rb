class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.11.0"
  url "https://github.com/k14s/kbld/releases/download/v0.11.0/kbld-darwin-amd64"
  sha256 "f2e231877f86830e2324f189235c2788c54a865cc00b427694272d8967cd23ba"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
