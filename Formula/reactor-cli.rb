# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.239"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.239/reactor-cli_v1.20261104.239_darwin-arm64.tar.gz"
      sha256 "0cce5aab0ae6afbce052b01360b10c6a189bb541525ec6317dde8aa181b2cbe3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.239/reactor-cli_v1.20261104.239_darwin-amd64.tar.gz"
      sha256 "331a0de7720d19efc56330f0942efd0a77761ea49ca85565c8470bc6138d9dd9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.239/reactor-cli_v1.20261104.239_linux-arm64.tar.gz"
      sha256 "ed4a0a74dc0633f9fb381996ef5dbaa760d3e55bc89d86c3d4847760e26c0ac6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.239/reactor-cli_v1.20261104.239_linux-amd64.tar.gz"
      sha256 "d60ce6590069d1b90a6bd6ef8a62811e2ee91c1f9376aa217591b6e50a9cfc92"
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
