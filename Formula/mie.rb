# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_darwin_arm64.tar.gz"
      sha256 "5d77c7260f2ce7a8e60cb726ba3df2b8d0dd6eb682f4c7ce0c3ba5b4a6a715ad"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_darwin_amd64.tar.gz"
      sha256 "86bdbf60962ce762cd3c44480c63d05c576d3c059870c15c211e2740deccc7e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_linux_arm64.tar.gz"
      sha256 "7616f8484dfcbf9be8f2a682bc13113619ad9ecb60ad52d93ff7f83ed7e2aafc"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_linux_amd64.tar.gz"
      sha256 "15ba1df44740e0da699aea19b60fd71d2c9630724e5df9639ecb5261182aef92"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
