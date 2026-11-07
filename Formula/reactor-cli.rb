# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.542"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.542/reactor-cli_v1.20261106.542_darwin-arm64.tar.gz"
      sha256 "d4489ac4917a8516319154df7233f3df168ec05ff30d8e5d30d435d65fb802f3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.542/reactor-cli_v1.20261106.542_darwin-amd64.tar.gz"
      sha256 "bbe054f4203bb240c6bae8e8c1496edd9663afad09f814e25664ce834e91f611"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.542/reactor-cli_v1.20261106.542_linux-arm64.tar.gz"
      sha256 "86e02b56b6d7d09f383463f281fe049ec995100b7be1791b8a3f68eef016fc91"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.542/reactor-cli_v1.20261106.542_linux-amd64.tar.gz"
      sha256 "e3884be06c06891b8eb1a8c8a49b0af0af3a7eb9265b87c9b6a79b43432fe08d"
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
