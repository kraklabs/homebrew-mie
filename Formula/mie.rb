# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.2/mie_v0.1.2_darwin_arm64.tar.gz"
      sha256 "93bff3573cff7e697d522804772655e4611f7a10d37c692f31e887be8d204b9a"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.2/mie_v0.1.2_darwin_amd64.tar.gz"
      sha256 "21b8ad6c702ccf7552ee86012813aa9453920bd6e729eff8105bacc600b98c87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.2/mie_v0.1.2_linux_arm64.tar.gz"
      sha256 "5643c5f15f697dbe0930f1d54016003244d611914f74cc462a3cdcddf1b4644d"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.2/mie_v0.1.2_linux_amd64.tar.gz"
      sha256 "106d343c5b9ac0220c970be6f6adf9c51eaee29dcd5a3c674a3cac106e221f46"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
