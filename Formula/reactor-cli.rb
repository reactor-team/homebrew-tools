# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.261"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.261/reactor-cli_v1.20261026.261_darwin-arm64.tar.gz"
      sha256 "fea44a6011702e577de13de00b39fa6cfc7d751576c040f6c842b644faead17c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.261/reactor-cli_v1.20261026.261_darwin-amd64.tar.gz"
      sha256 "0b10b53e37192835aa152069c0385421aa59e2fb574bbf06256073349c6ba295"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.261/reactor-cli_v1.20261026.261_linux-arm64.tar.gz"
      sha256 "975cc5b468f2eaa5db125e245920e009ab21b4a8e51d2d0325a9d658e7989631"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.261/reactor-cli_v1.20261026.261_linux-amd64.tar.gz"
      sha256 "5fe24af8beb9e5e36722bbfba667085f2447009502adb81d2a55c03866376698"
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
