# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.111"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.111/reactor-cli_v1.20261111.111_darwin-arm64.tar.gz"
      sha256 "c634c1ed088b4419e8fad124159f76e9dd77358fb2d5f9f83180b6ee89b176ab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.111/reactor-cli_v1.20261111.111_darwin-amd64.tar.gz"
      sha256 "b059a8384e1a602458883e435c7d129ecedb878c1e3f1d6d217d363500032efa"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.111/reactor-cli_v1.20261111.111_linux-arm64.tar.gz"
      sha256 "73d05f0d3155880dea01ff1e617a57492c57764ed837f1639f27cf25639c31a8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.111/reactor-cli_v1.20261111.111_linux-amd64.tar.gz"
      sha256 "2c8f34b2d8088ba453292b3d62e788ea023d6b35edf88c2413c41c08f089523a"
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
