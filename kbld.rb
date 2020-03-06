class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.14.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.14.0/kbld-darwin-amd64"
    sha256 "1da8bd208e49a1faeb48b167ba5fc69b10b94b74c0e6289bd0adbe043f524b4f"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.14.0/kbld-linux-amd64"
    sha256 "9946ae1c154be0dfa301e316cf4403d6961096a79458656df5eba634f4c9250c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
