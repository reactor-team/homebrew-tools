# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.509"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.509/reactor-cli_v1.20261106.509_darwin-arm64.tar.gz"
      sha256 "ab5d7dbf491ade0b047683576855c98832ce0f291b3debfa71e7a77f4131fd9d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.509/reactor-cli_v1.20261106.509_darwin-amd64.tar.gz"
      sha256 "8f8a3040ec01413283139ae07dfda563ef4f5d9eb4691204ef56e7b885c898bd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.509/reactor-cli_v1.20261106.509_linux-arm64.tar.gz"
      sha256 "3226de9c294c28e9c48619212f4a45157520280eb480dbf778b00d59e82eea1f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.509/reactor-cli_v1.20261106.509_linux-amd64.tar.gz"
      sha256 "962b072751e94be7298dba993b17536a997585d31dd6e6599078f527a9ac07cd"
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
