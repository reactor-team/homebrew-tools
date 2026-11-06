# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.472"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.472/reactor-cli_v1.20261106.472_darwin-arm64.tar.gz"
      sha256 "86553b2e933fa9a14ae864ef21f334fce7f1b36b5f7ae2e4f010f17789332959"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.472/reactor-cli_v1.20261106.472_darwin-amd64.tar.gz"
      sha256 "7d2a1c5afa8c21d227d33e4f06512f3a7e3c67026d175b5bd86aa0af5fa12411"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.472/reactor-cli_v1.20261106.472_linux-arm64.tar.gz"
      sha256 "e58f0d401c016c85065cef7f3761c21fa0e96d3eb9b178f87aee140854fa71ea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.472/reactor-cli_v1.20261106.472_linux-amd64.tar.gz"
      sha256 "e176a0853f39d9d9a4171ab4c0d095f6972c72ea9ee27d0cd2fa58d6062328f5"
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
