class Kwt < Formula
  desc "Kubernetes Workstation Tools"
  homepage "https://github.com/k14s/kwt"
  version "v0.0.5"
  url "https://github.com/k14s/kwt/releases/download/v0.0.5/kwt-darwin-amd64"
  sha256 "114adb8b4f80e2f20c008fd2d4695641b5228c4c4525a50f1191558b29335494"

  depends_on :arch => :x86_64

  def install
    bin.install "kwt-darwin-amd64" => "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
