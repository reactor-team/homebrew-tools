# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.270"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.270/reactor-cli_v1.20261020.270_darwin-arm64.tar.gz"
      sha256 "5c948596eb76db49237bc413ec3275562befb62405212a1a02c7482f77f189d3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.270/reactor-cli_v1.20261020.270_darwin-amd64.tar.gz"
      sha256 "c1ef1de532e3c84cef817e16f4490011db9d609494b56ae103e7f544d05a6952"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.270/reactor-cli_v1.20261020.270_linux-arm64.tar.gz"
      sha256 "5aab272a5331cef87a225b1805180b2d67cbaa7916938b95333ddfb7122e3a71"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.270/reactor-cli_v1.20261020.270_linux-amd64.tar.gz"
      sha256 "1e4de8dd152bb4943d45e2e8dfecb8f81c198624be5ca1e12f5948b5fc22500a"
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
