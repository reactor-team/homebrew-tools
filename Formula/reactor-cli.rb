# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.455"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.455/reactor-cli_v1.20261013.455_darwin-arm64.tar.gz"
      sha256 "c3e9e49b190d9ee132c7b4e0f0edc8ddb9a75bb2b7192ef0f92b47b50104d7dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.455/reactor-cli_v1.20261013.455_darwin-amd64.tar.gz"
      sha256 "0d4288db8ee720aa124c9f9bae3d260b2a1ce77ee00a75ae9a19285d69424741"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.455/reactor-cli_v1.20261013.455_linux-arm64.tar.gz"
      sha256 "8f2f2c067645b1f50d6b39d8d210eab2525dc40175bfaddd8e2566fd476e0237"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.455/reactor-cli_v1.20261013.455_linux-amd64.tar.gz"
      sha256 "73583845ee810dc8a19eb243cb34a99053a4bc05251129c0870e16144e3f0f1f"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
