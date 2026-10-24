# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.74"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.74/reactor-cli_v1.20261024.74_darwin-arm64.tar.gz"
      sha256 "e9fa1569882d852283b680d923aba6025e28fb3e9b04a874a4e82dfbc351056f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.74/reactor-cli_v1.20261024.74_darwin-amd64.tar.gz"
      sha256 "59ea2ea54d707b0324cb717273ed0dfb0c42245471664b99e293bcaa88b321eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.74/reactor-cli_v1.20261024.74_linux-arm64.tar.gz"
      sha256 "855666e31e3b53e836959fd5175bd04a669d6615b6fecec993f4a9ef5288b477"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.74/reactor-cli_v1.20261024.74_linux-amd64.tar.gz"
      sha256 "3947dac3f617eeb968649ee5b4af7d482a5dfc16997002f7bb917969dea79f61"
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
