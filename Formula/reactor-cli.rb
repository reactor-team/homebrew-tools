# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.122"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.122/reactor-cli_v1.20261111.122_darwin-arm64.tar.gz"
      sha256 "7d4505280df58b9f991e0a07398c1b5b40729c15648608fafa57d09a256ff33f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.122/reactor-cli_v1.20261111.122_darwin-amd64.tar.gz"
      sha256 "8e9c01288cf0c5611dfa0e655f343d0da20ab5ffca6393445d55d00f31076aff"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.122/reactor-cli_v1.20261111.122_linux-arm64.tar.gz"
      sha256 "f92606c6ea12d14cfa36f69085a77d2824ccf3510afc9964881c8d4affdd7f26"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.122/reactor-cli_v1.20261111.122_linux-amd64.tar.gz"
      sha256 "842e07a20e8cf3c3a3224d6d50b97f711b85a7408aad0f55cdeb926d347ef859"
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
