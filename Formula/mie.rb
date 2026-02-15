# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.4/mie_v1.3.4_darwin_arm64.tar.gz"
      sha256 "cbac33f29d64e37323feb442f481a0ef981b6a2131ec43e54398d4e69e4f0278"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.4/mie_v1.3.4_darwin_amd64.tar.gz"
      sha256 "9c05b9b825f4d4e2cb37b28b7d0b4336dc3b34457031dd398c8164693a35a452"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.4/mie_v1.3.4_linux_arm64.tar.gz"
      sha256 "e018d99f5645ba8ee776bac873e1da6d965e79f4da51767c676a4a07c0694f4e"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.4/mie_v1.3.4_linux_amd64.tar.gz"
      sha256 "c5bbe8e02280f1ce944b20990924d779d44901ba5dfa8bec7c195236fb0a8ee1"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
