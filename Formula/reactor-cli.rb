# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.517"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.517/reactor-cli_v1.20261106.517_darwin-arm64.tar.gz"
      sha256 "04944ddcbc1996664b29c90360289d526707e159b9a1e865c8c614a84c62d3e7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.517/reactor-cli_v1.20261106.517_darwin-amd64.tar.gz"
      sha256 "2459df979e8eb537437225a77347460d6dc201bb3dad5d5b414645cdd7378729"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.517/reactor-cli_v1.20261106.517_linux-arm64.tar.gz"
      sha256 "e9394ff87298d13139928e3288302625ffa62f1b3273cc6b4527727e3ed1cc44"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.517/reactor-cli_v1.20261106.517_linux-amd64.tar.gz"
      sha256 "56ab5a48ccbd5f4adfe520bd5ac4821cf28619769b422326ae948069eb205fce"
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
