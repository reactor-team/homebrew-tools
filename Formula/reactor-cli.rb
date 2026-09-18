# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260918.27564"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260918.27564/reactor-cli_v1.20260918.27564_darwin-arm64.tar.gz"
      sha256 "a6f71635cf2beeea1ad57f5132b6f9735920f147aba949aff31aaa437429e057"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260918.27564/reactor-cli_v1.20260918.27564_darwin-amd64.tar.gz"
      sha256 "d6db5c8c55a843261522f45821482cc2d9ffe145b58629ee90d83b90d30761f2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260918.27564/reactor-cli_v1.20260918.27564_linux-arm64.tar.gz"
      sha256 "72ec3c5d5c83e16f0ef210971d6e824f94896acee5b62a7dec32fb1d3d4221fc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260918.27564/reactor-cli_v1.20260918.27564_linux-amd64.tar.gz"
      sha256 "3ab856381cd36334e7970b884dbbd1837e411a01c2c09fd2a587c0ea752b9515"
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
