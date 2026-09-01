# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24261"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24261/reactor-cli_v1.20260901.24261_darwin-arm64.tar.gz"
      sha256 "6d7c8d6ef3b47ae3a614e1545f823afcaf90dc728ab62fe8e384c1ec0efcd67e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24261/reactor-cli_v1.20260901.24261_darwin-amd64.tar.gz"
      sha256 "38bf283419977f1ace113636d544db29e3989600d6a64a3e7766c732f0da41b0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24261/reactor-cli_v1.20260901.24261_linux-arm64.tar.gz"
      sha256 "a064f0841f6b9f1de9ac08f64e8b8339dbac28ac4546f308b57d666eef2b8ef9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24261/reactor-cli_v1.20260901.24261_linux-amd64.tar.gz"
      sha256 "97469be01889b7ef7c176a14c33279c46f036cad515e5c04904d4b0c12124348"
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
