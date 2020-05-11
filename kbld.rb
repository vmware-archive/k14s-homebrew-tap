class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.21.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.21.0/kbld-darwin-amd64"
    sha256 "52d0aed99a78eeb78bb5a4ade850391b294a87f5bae4493392f2c09fbe836e96"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.21.0/kbld-linux-amd64"
    sha256 "618f7e97389d75ae65c73cdad7a068d1f5b22e296042992c8498d0e16e727f78"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
