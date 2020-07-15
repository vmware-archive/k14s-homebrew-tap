###
# This branch is deprecated, use 'develop' branch instead.
###

class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"

  ohai "Branch rename"

  opoo "We have renamed 'master' branch to 'develop'."
  opoo ""

  odie """To upgrade, retap it with:
    brew untap k14s/tap
    brew tap k14s/tap
    brew upgrade kbld"""
end
