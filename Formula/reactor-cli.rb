# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260930.75"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260930.75/reactor-cli_v1.20260930.75_darwin-arm64.tar.gz"
      sha256 "98c274f95f4c7b3986b523f89e35c3a4dd29420112b0f6500f0e4b915fba78f3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260930.75/reactor-cli_v1.20260930.75_darwin-amd64.tar.gz"
      sha256 "f42e5adc9ff14913b48d1ee36cd53acdecfc3bed340607d697e94a9c076c9c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260930.75/reactor-cli_v1.20260930.75_linux-arm64.tar.gz"
      sha256 "82fed68c8a8104a2670b48a0746735cdda467e2d842907ebe1b11ba8f3deb350"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260930.75/reactor-cli_v1.20260930.75_linux-amd64.tar.gz"
      sha256 "8b6cd505d6141a3d3e6a3c925246180c932e99dd5c7a54f6a61145ae92b515f5"
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
