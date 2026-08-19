# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260819.22305"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22305/reactor-cli_v1.20260819.22305_darwin-arm64.tar.gz"
      sha256 "d6c0ade4f01a1bcfe63efe970f0519085c84e62d876c0034cd4f61581b3a67e7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22305/reactor-cli_v1.20260819.22305_darwin-amd64.tar.gz"
      sha256 "42d2baa9d42c344c20a6ed8cf1ec3389c9adbc6ebaca5b263bc6dbd64f6e8d07"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22305/reactor-cli_v1.20260819.22305_linux-arm64.tar.gz"
      sha256 "7df82f5641c45d753f69ede970ee475e9938fda01ad89d26a686bf9064274617"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22305/reactor-cli_v1.20260819.22305_linux-amd64.tar.gz"
      sha256 "df716e9aa0c6f1948906715215ac24b7721226de2fb0fa2e9d4060b3da1f0ac1"
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
