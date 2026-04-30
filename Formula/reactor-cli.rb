# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260430.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://reactor-releases.s3.amazonaws.com/reactor-cli/v1.20260430.3/reactor-cli_v1.20260430.3_darwin-arm64.tar.gz"
      sha256 "4357b993c52384c78e967f4fdba946a2270e4798b02a78a961fcea8b29e26515"
    end
    on_intel do
      url "https://reactor-releases.s3.amazonaws.com/reactor-cli/v1.20260430.3/reactor-cli_v1.20260430.3_darwin-amd64.tar.gz"
      sha256 "5c2ef4a8682c8c3506cda26c6bb0dd68e29d1157ebb86bf10fd3b12f3bd38367"
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
