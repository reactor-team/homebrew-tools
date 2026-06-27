# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16831"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16831/reactor-cli_v1.20260627.16831_darwin-arm64.tar.gz"
      sha256 "88cc43b00845429bcf2aef2206d3408972eedfe2a940dba584139b834302a4bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16831/reactor-cli_v1.20260627.16831_darwin-amd64.tar.gz"
      sha256 "05f1a080c197c3ff3a64afa9e6cff5750fe3ba28197d9718c2cae4cf5db0ee92"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16831/reactor-cli_v1.20260627.16831_linux-arm64.tar.gz"
      sha256 "8645808633380eec4b61a659e1701740bb9093604b5340d6850a44b979614ed7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16831/reactor-cli_v1.20260627.16831_linux-amd64.tar.gz"
      sha256 "49dca672930aa5b178c5bb39ee4f69de3030af95b3b5633e19a4f5dcf6043961"
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
