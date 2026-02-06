# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_darwin_arm64.tar.gz"
      sha256 "c5b73a7e18a624e19debfb7d6e41c2ab4606c5958cd4a0f0ff1d105edab2f412"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_darwin_amd64.tar.gz"
      sha256 "67e6963824c749a0d936e7f41dce7ca618693cf4ad7b96102bc8d182cd6a2da9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_linux_arm64.tar.gz"
      sha256 "3be9c11e72c295c19ceec844cf97e4b9346c491ea56ab5cef05c39b59760a6d3"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_linux_amd64.tar.gz"
      sha256 "090321d947c32afee65d478300622714d334232ba34c649c237e3aa233039edc"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
