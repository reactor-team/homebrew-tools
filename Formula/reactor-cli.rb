# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261001.51"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.51/reactor-cli_v1.20261001.51_darwin-arm64.tar.gz"
      sha256 "75895f58c3cb6c394902fcafdb0f244f2c98b448e40880af6bc247f53c41c342"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.51/reactor-cli_v1.20261001.51_darwin-amd64.tar.gz"
      sha256 "713c6509a8e7cc14e7a6e441b1237af4a6fbec96b9f0f7695d939b122ad047ba"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.51/reactor-cli_v1.20261001.51_linux-arm64.tar.gz"
      sha256 "a5a1d95f510aa0bbea35c6221dd36ec458fe256a3de6b11cee8b7783cbbe6725"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.51/reactor-cli_v1.20261001.51_linux-amd64.tar.gz"
      sha256 "cff1060d84f3e704252b14f739a1758b24eca93fab633f8760d504b6174e8629"
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
