class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.9.0"
  url "https://github.com/k14s/kbld/releases/download/v0.9.0/kbld-darwin-amd64"
  sha256 "a81a21fea239a6114951ccbf76a31ca20850b8c4c453a661e7ce6575137016b7"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
