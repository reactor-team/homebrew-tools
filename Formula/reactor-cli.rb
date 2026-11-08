# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.144"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.144/reactor-cli_v1.20261108.144_darwin-arm64.tar.gz"
      sha256 "bad8706c7ef26debd48af1d66ab8eebadbdaf44624dc8720cf5628fe692d7f98"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.144/reactor-cli_v1.20261108.144_darwin-amd64.tar.gz"
      sha256 "2240905abf0a4eeba1293edeb764c45843eefcd076175f69daa5bdbd89f7651c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.144/reactor-cli_v1.20261108.144_linux-arm64.tar.gz"
      sha256 "3942dea70579b4a279107088dd2108d9bfcd1b85d32715267021fa03840a6049"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.144/reactor-cli_v1.20261108.144_linux-amd64.tar.gz"
      sha256 "905adff32e69fef55ee17d9606855b13c71de8555952a5641bbf7278af4b5f31"
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
