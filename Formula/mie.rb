# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.8/mie_v0.1.8_darwin_arm64.tar.gz"
      sha256 "e4b5c6f551c76a800c2a40710b2177748a9d4760d9bd6b5496e7737739029b72"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.8/mie_v0.1.8_darwin_amd64.tar.gz"
      sha256 "9b73bb541c601a5ab386f195caec9b1a47a2660f9346623365296c31245d0668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.8/mie_v0.1.8_linux_arm64.tar.gz"
      sha256 "d66cde5adb8791379a762cd2c484841ac766f895f47ff206ad7673f680f9f9e0"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.8/mie_v0.1.8_linux_amd64.tar.gz"
      sha256 "7513942bff7b537ce4fe3abc5fd4b903c8af9534daed8f7fe028e99c4537d673"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
