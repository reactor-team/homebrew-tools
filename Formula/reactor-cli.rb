# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.275"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.275/reactor-cli_v1.20261104.275_darwin-arm64.tar.gz"
      sha256 "79cf958174e19a3a6a4810fc198e8e643f743d85d04c05e45e25104c4299e035"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.275/reactor-cli_v1.20261104.275_darwin-amd64.tar.gz"
      sha256 "c1b9ee33f82b0fdfdc52cab49dbf524dfedc89c7c52e666156fada22f32600a9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.275/reactor-cli_v1.20261104.275_linux-arm64.tar.gz"
      sha256 "8744168ddef8058ca095546e15a9283bf8ff1a28110c7771d7d84daa0181065f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.275/reactor-cli_v1.20261104.275_linux-amd64.tar.gz"
      sha256 "2e303e58c2a7440defd96676cac056e219f1534df021104ec1ea209acda33eba"
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
