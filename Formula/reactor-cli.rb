# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.343"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.343/reactor-cli_v1.20261111.343_darwin-arm64.tar.gz"
      sha256 "a80ad165f7df75a874626b60319efd613eb03743e4c417b24b29479dbd6193e4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.343/reactor-cli_v1.20261111.343_darwin-amd64.tar.gz"
      sha256 "2118e09445e9a1b86c14e83c61f95e09f69aa15e1764fa588806de3b5394593c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.343/reactor-cli_v1.20261111.343_linux-arm64.tar.gz"
      sha256 "b1d5d661e3b0d8b4d6fb49c84ef1604581c7626d760617f644e645592d736d57"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.343/reactor-cli_v1.20261111.343_linux-amd64.tar.gz"
      sha256 "2efa66696dfbbd7d55ab5d08e1a54560b61a50f7ce0352676be60600b2c0847b"
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
