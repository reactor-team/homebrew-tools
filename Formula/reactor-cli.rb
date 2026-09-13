# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260913.26143"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26143/reactor-cli_v1.20260913.26143_darwin-arm64.tar.gz"
      sha256 "ff26bfd90a53fa48463ce32d45c19bad628b09506dbfcae309b9fa0adc7f865f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26143/reactor-cli_v1.20260913.26143_darwin-amd64.tar.gz"
      sha256 "f1e5e2e8b2df5cbbd4ff6872e91f6b9e5e8dc620ce1425f90b58b914e0e338a4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26143/reactor-cli_v1.20260913.26143_linux-arm64.tar.gz"
      sha256 "ab02b2da993149f23dca91dc8186c59e95376af7e2d9831a7b9aa6f2600c4096"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26143/reactor-cli_v1.20260913.26143_linux-amd64.tar.gz"
      sha256 "27803860fe7edb4993bcb9543f2740e0389114e957cf35520ee4b1a26359850e"
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
