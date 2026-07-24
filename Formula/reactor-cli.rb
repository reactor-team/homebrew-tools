# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19202"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19202/reactor-cli_v1.20260724.19202_darwin-arm64.tar.gz"
      sha256 "ca346494b7e632640fcfbe552b1721d882d26d4f2e720eebe61060ff03d5588c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19202/reactor-cli_v1.20260724.19202_darwin-amd64.tar.gz"
      sha256 "abcd3ee3a7854bf1b89dd01c34fe1e28f4ec63dc2d162016c3c7223d9fd36720"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19202/reactor-cli_v1.20260724.19202_linux-arm64.tar.gz"
      sha256 "89e9b40711f10abc58db3512df3b7645e988890a3406440e5b64ef951436f71e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19202/reactor-cli_v1.20260724.19202_linux-amd64.tar.gz"
      sha256 "b25031b3e4eb24f905c318d37a5bcffa5282f1aeadb5f9545f6a074e8e6b6263"
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
