# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.87"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.87/reactor-cli_v1.20261002.87_darwin-arm64.tar.gz"
      sha256 "c9a240566c4247a4678d690850acd9044e5d117b2f77f946b475d0cffa42cee5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.87/reactor-cli_v1.20261002.87_darwin-amd64.tar.gz"
      sha256 "0ec22091fd9d253c58cad15dae5ed93e08aa1967d9abf3d1310d0698c20267d5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.87/reactor-cli_v1.20261002.87_linux-arm64.tar.gz"
      sha256 "f87f2b654ada90901117d31f2cdf226a68ffc0f132e364bdf2e5004c33d7e533"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.87/reactor-cli_v1.20261002.87_linux-amd64.tar.gz"
      sha256 "630826485dea3d8fce8b2baa427c31d6307798922357d558cb0255001de3f155"
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
