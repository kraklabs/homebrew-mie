# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_darwin_arm64.tar.gz"
      sha256 "4f88b30741e59a4bc4dc15bd885c5dea308fd22eb4fcc9b21689f04e60210efd"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_darwin_amd64.tar.gz"
      sha256 "acbf300e5ce5aac3c4c7bca41e64873d02cd15341d84b5a7121fced93df3581d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_linux_arm64.tar.gz"
      sha256 "8a00afffa5221c5ae1d241135b1bedfd61df1c20fd4e4fa7491c8c4e3eed17a0"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_linux_amd64.tar.gz"
      sha256 "c0e9641caf215a9a528c308eafafbc61a68ed4bd27237180e55beb34cf7c3ab5"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
