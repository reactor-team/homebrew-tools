# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260619.16382"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16382/reactor-cli_v1.20260619.16382_darwin-arm64.tar.gz"
      sha256 "7a1ef4105e6aa2066512569239216a0d55f44eab16ff5ce56be156a971e495b3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16382/reactor-cli_v1.20260619.16382_darwin-amd64.tar.gz"
      sha256 "2a77249f1c5d10406fc6916f466f6b693881c3bc9cd4af3560033cfb1028147f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16382/reactor-cli_v1.20260619.16382_linux-arm64.tar.gz"
      sha256 "dca5e5b1ab75c5f43fc769112846a7fb379655f8fd4862a445fcd0dd00b5c1eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16382/reactor-cli_v1.20260619.16382_linux-amd64.tar.gz"
      sha256 "a808e543db773535fd59c0e0b368f85a82d1867193a54fb1c278bf303e0f3c67"
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
