# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261014.188"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.188/reactor-cli_v1.20261014.188_darwin-arm64.tar.gz"
      sha256 "b14e90a8d7b78cc01730f71afb05924be917a8848e762f9b1164bf083dc029b8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.188/reactor-cli_v1.20261014.188_darwin-amd64.tar.gz"
      sha256 "fb51994d00e6be9529476aa3d27ee1f18925c8927522864303664aa93710869e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.188/reactor-cli_v1.20261014.188_linux-arm64.tar.gz"
      sha256 "2ff071a0694f34f41ef1f0b36361effdb5f1811b33fc36e676fa87bdb58e8271"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.188/reactor-cli_v1.20261014.188_linux-amd64.tar.gz"
      sha256 "c83bb487826cd1a10cf30b81b8802b71e9611eb3512acd43a414957d9dd52784"
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
