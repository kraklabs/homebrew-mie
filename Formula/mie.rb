# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.7/mie_v1.3.7_darwin_arm64.tar.gz"
      sha256 "411013660e7b4ca25646daa2fdf380cbb8c473f2050f5a277eee5e09ca9ebd8c"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.7/mie_v1.3.7_darwin_amd64.tar.gz"
      sha256 "576f94482dca211e513808b5886c183bb1af4efe59746d8922bf092f5545f0a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.7/mie_v1.3.7_linux_arm64.tar.gz"
      sha256 "dfe058588c267c35c72ff858acf742ce834578ee40bf10b402671d2652384082"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.7/mie_v1.3.7_linux_amd64.tar.gz"
      sha256 "38f00e09be3286edbc60dddcf9a35fa8116090a1f896f7e828d0879ebbcf7693"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
