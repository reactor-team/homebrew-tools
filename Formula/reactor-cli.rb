# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.360"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.360/reactor-cli_v1.20261111.360_darwin-arm64.tar.gz"
      sha256 "9971c53b736dca86cc0e2a8abf396eff8b35de30f379aaa3575f9c3108522b22"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.360/reactor-cli_v1.20261111.360_darwin-amd64.tar.gz"
      sha256 "91e44f55f2277ee1821cd58e9d04dc48eabb9553a72309ddf9b8a8363b0af4aa"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.360/reactor-cli_v1.20261111.360_linux-arm64.tar.gz"
      sha256 "0786c2046a724123e51885f704587da2f1426e7736880adbc55e70d2835ff102"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.360/reactor-cli_v1.20261111.360_linux-amd64.tar.gz"
      sha256 "6b3071d14e84ab57790346fc8391616a5896a97552c2b81c852c1cd7d0b1b43f"
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
