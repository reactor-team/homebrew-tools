# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.255"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.255/reactor-cli_v1.20261102.255_darwin-arm64.tar.gz"
      sha256 "d1795dcc4d3bb8fdadcdea4177b7143637fab46abbdb6836d2ae191b7d6ef206"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.255/reactor-cli_v1.20261102.255_darwin-amd64.tar.gz"
      sha256 "f744363577ac67e3acba92aac022763930f0269964ef4cc7ecd88008bb0c2a42"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.255/reactor-cli_v1.20261102.255_linux-arm64.tar.gz"
      sha256 "903bba8103aa4d0345265c0c1bf12906474d3c76515a23326214a62a70df55b3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.255/reactor-cli_v1.20261102.255_linux-amd64.tar.gz"
      sha256 "765cf06e11c99237e0767a0d22a571a9712a66c8598c9817fb6f4ed7166f3c1a"
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
