# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.230"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.230/reactor-cli_v1.20261106.230_darwin-arm64.tar.gz"
      sha256 "ba977ce568fbdf4a5427ed806522ed9a6809efe3cc2734c6b554995ec0c15941"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.230/reactor-cli_v1.20261106.230_darwin-amd64.tar.gz"
      sha256 "80ee6d414fb0180dbd200cb7be985982066fa9fec2e00a56244d4afbd6ed39f2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.230/reactor-cli_v1.20261106.230_linux-arm64.tar.gz"
      sha256 "5da1b763443d23225c00f16d1aa960bc96bbb793cdd675833389f7d360405c76"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.230/reactor-cli_v1.20261106.230_linux-amd64.tar.gz"
      sha256 "d3e077b34934fe52e36e0bd056c3fe61678b7fd93da71217d6ac50114e44fc0d"
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
