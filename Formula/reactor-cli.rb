# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16911"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16911/reactor-cli_v1.20260627.16911_darwin-arm64.tar.gz"
      sha256 "12c4de08cc57ef0064e872103bba7f129c00bf61a1ab6df247e6baf08c6b52a6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16911/reactor-cli_v1.20260627.16911_darwin-amd64.tar.gz"
      sha256 "badc94c192bc685fc45567aeeb009e7184d2e0cbf6fb6e5772c9be61d04a8766"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16911/reactor-cli_v1.20260627.16911_linux-arm64.tar.gz"
      sha256 "e58804f7f2457a7f596a66420a20739b26ca6c2a3a24dbbcf7f3ae7336f87042"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16911/reactor-cli_v1.20260627.16911_linux-amd64.tar.gz"
      sha256 "c95ee6af2c510aa0e5751eac728c85b1aeec67354144cb54224431905a46c5d3"
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
