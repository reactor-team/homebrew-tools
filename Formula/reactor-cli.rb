# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260610.15681"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15681/reactor-cli_v1.20260610.15681_darwin-arm64.tar.gz"
      sha256 "bafdc3c027aecfd58aa7d0f7804db27b46a13318a753ebc826075cc0b217ac9d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15681/reactor-cli_v1.20260610.15681_darwin-amd64.tar.gz"
      sha256 "88356513fc2d0eaa76f5e90c3889df94f57371ac40ecb2e10fbc873b4ba70e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15681/reactor-cli_v1.20260610.15681_linux-arm64.tar.gz"
      sha256 "cbde6035c545456d4fea2cfe65eff0bfc223ab6528fdc38305f236177146b20a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15681/reactor-cli_v1.20260610.15681_linux-amd64.tar.gz"
      sha256 "c0c3f99570c33919148b57f712690a3abf8e059d3aa2e4d28e32da3d1f64472e"
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
