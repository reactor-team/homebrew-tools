# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260718.18764"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260718.18764/reactor-cli_v1.20260718.18764_darwin-arm64.tar.gz"
      sha256 "2f1db481ce7c9c0063099be95972122d164d855de4eac3acb756d7c0ecc8039f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260718.18764/reactor-cli_v1.20260718.18764_darwin-amd64.tar.gz"
      sha256 "d2138cfe381968d2ce0f2ba552610176a7d95689852a8f2680307e765c81b189"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260718.18764/reactor-cli_v1.20260718.18764_linux-arm64.tar.gz"
      sha256 "1f5f9106f3b21f9e3f8ed7b1cbaf36b23b6457132785b0fd66c9330532d5bf8f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260718.18764/reactor-cli_v1.20260718.18764_linux-amd64.tar.gz"
      sha256 "5d3b5b8c94a898dde7dd89d4d7ec71005fcf884b6fad655ab2580b7cb6097ebf"
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
