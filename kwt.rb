###
# This branch is deprecated, use 'develop' branch instead.
###

class Kwt < Formula
  desc "Kubernetes Workstation Tools"
  homepage "https://github.com/k14s/kwt"

  ohai "Branch rename"

  opoo "We have renamed 'master' branch to 'develop'."
  opoo ""

  odie """To upgrade, retap it with:
    brew untap k14s/tap
    brew tap k14s/tap
    brew upgrade kwt"""
end
