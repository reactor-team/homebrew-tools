# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260818.22146"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22146/reactor-cli_v1.20260818.22146_darwin-arm64.tar.gz"
      sha256 "c846396604fe1b78d0a35384402281ab0a147772808d51d6405cf6fb5950e00e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22146/reactor-cli_v1.20260818.22146_darwin-amd64.tar.gz"
      sha256 "bfc0796d013bcab2a485e62a53e65f3a08c3c06115c7301de2b3d0d8b2e134df"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22146/reactor-cli_v1.20260818.22146_linux-arm64.tar.gz"
      sha256 "d4efa7ae5234b235cee441a234edbb8628ebad7cb05ef00b7e3d757de2926400"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22146/reactor-cli_v1.20260818.22146_linux-amd64.tar.gz"
      sha256 "ef78543199371e450c43d974a912caa3b539e6a361cf82b6b6aeec6d261432af"
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
