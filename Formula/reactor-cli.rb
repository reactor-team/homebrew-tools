# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24193"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24193/reactor-cli_v1.20260901.24193_darwin-arm64.tar.gz"
      sha256 "82af83bb6df4b17eefca8308c06d6d1d43d14ddcb8bcb8962b00eb5c00eaf820"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24193/reactor-cli_v1.20260901.24193_darwin-amd64.tar.gz"
      sha256 "4acdc4ae8bb2a347c932add455602f8599f525e2f03a10e9bbe8082894f954bd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24193/reactor-cli_v1.20260901.24193_linux-arm64.tar.gz"
      sha256 "aa49805766493a725ffa345bd3afe0a01c71738b04f5de948d59288e82dc2758"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24193/reactor-cli_v1.20260901.24193_linux-amd64.tar.gz"
      sha256 "c1b81b02b6ecd508bff4e6215ce89ee6e668b552e51d75f86d2485c778415973"
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
