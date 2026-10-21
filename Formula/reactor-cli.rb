# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.5/reactor-cli_v1.20261021.5_darwin-arm64.tar.gz"
      sha256 "0a0a60ac43d48e7cef999e3fd15930d26e8469850c4b3dddca92c3f9f4d25e1f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.5/reactor-cli_v1.20261021.5_darwin-amd64.tar.gz"
      sha256 "c0ad1f3bd3818c75c3e8b4c617086875f9ad2d0ac11f431ca37348a1f994670b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.5/reactor-cli_v1.20261021.5_linux-arm64.tar.gz"
      sha256 "607d7df28b60ac001326a2211d6eafbf71d03c9a1651bec5580024699bce8ca4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.5/reactor-cli_v1.20261021.5_linux-amd64.tar.gz"
      sha256 "63a7d7b4e7da827aa8f73199bdf90ae52a43790c37923c813c3c2b8701f21688"
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
