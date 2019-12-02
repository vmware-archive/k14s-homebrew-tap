class Kwt < Formula
  desc "Kubernetes Workstation Tools"
  homepage "https://github.com/k14s/kwt"
  version "v0.0.6"
  url "https://github.com/k14s/kwt/releases/download/v0.0.6/kwt-darwin-amd64"
  sha256 "555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517"

  depends_on :arch => :x86_64

  def install
    bin.install "kwt-darwin-amd64" => "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
