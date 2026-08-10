# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260810.21411"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21411/reactor-cli_v1.20260810.21411_darwin-arm64.tar.gz"
      sha256 "f918b0e8989de02016a9d7edfc81bdf27e3f075cb81367981259d73dd2acf9e1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21411/reactor-cli_v1.20260810.21411_darwin-amd64.tar.gz"
      sha256 "c67c3f3f3f723188c43ea2342463eb2b2881eb1191978ca65ae90169b941e6bc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21411/reactor-cli_v1.20260810.21411_linux-arm64.tar.gz"
      sha256 "61aba506124ee32ab8eb5c6c6d07896fc26ac0ccf7477a0f562120f015322dfb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21411/reactor-cli_v1.20260810.21411_linux-amd64.tar.gz"
      sha256 "f9660af9273226049faa26de94dada84e92aef2a43727bd40cad9ca3659867d3"
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
