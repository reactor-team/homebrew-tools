# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.209"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.209/reactor-cli_v1.20261111.209_darwin-arm64.tar.gz"
      sha256 "2fb800128667243ece27f40b4fad371e2040612cb3a649fe4f277ee7a97dff29"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.209/reactor-cli_v1.20261111.209_darwin-amd64.tar.gz"
      sha256 "2ea9fda50b286ba96eb87f1c8773830446b4d2ae0dd7dc54666c6ab3b426d189"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.209/reactor-cli_v1.20261111.209_linux-arm64.tar.gz"
      sha256 "1b677d6a35c1252504bf2f2d810baae81ef764fa99923110f4118d3c7c55d0d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.209/reactor-cli_v1.20261111.209_linux-amd64.tar.gz"
      sha256 "8521c43007ee1fb2f637819d03851c8ced6302eb26b1f10407c9c4e39f8b0cc5"
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
