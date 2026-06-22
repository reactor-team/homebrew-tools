# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260622.16437"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16437/reactor-cli_v1.20260622.16437_darwin-arm64.tar.gz"
      sha256 "12b068d334fbd2feb2a18626a6eec479c03273ffc7f26b12cfc798a529c46ba9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16437/reactor-cli_v1.20260622.16437_darwin-amd64.tar.gz"
      sha256 "805d09400a3c3581459c3a53030b0f23d746927c2a2671c8b6f526d1c897d399"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16437/reactor-cli_v1.20260622.16437_linux-arm64.tar.gz"
      sha256 "b2af24dba764fdfda34542e57e97f4d3ce41993a0518d4c14cc217c1249b6562"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16437/reactor-cli_v1.20260622.16437_linux-amd64.tar.gz"
      sha256 "85a52e21a2e2ed7ceebe75fb15b99bd5b11ae2305fda2dce3abe27690adf09eb"
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
