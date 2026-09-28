# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28721"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28721/reactor-cli_v1.20260928.28721_darwin-arm64.tar.gz"
      sha256 "2cc03a753e2cc28c6a462a6373283e25b6aa5693a78ce068f276ae6de3d9d904"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28721/reactor-cli_v1.20260928.28721_darwin-amd64.tar.gz"
      sha256 "f1a45d5cfa37cad5e568c3036de0b2bc51b5cc1377c0484330471eb7663b1c24"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28721/reactor-cli_v1.20260928.28721_linux-arm64.tar.gz"
      sha256 "f120a53d62a02a452a9a03b0ade802aaaca84e7f42a621caee2f93cf3209158f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28721/reactor-cli_v1.20260928.28721_linux-amd64.tar.gz"
      sha256 "0a5b71be0ee11f9a236189dfad69661b177c9c00acce06821df49be928d12699"
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
