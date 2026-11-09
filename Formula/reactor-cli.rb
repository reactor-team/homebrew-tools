# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.470"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.470/reactor-cli_v1.20261109.470_darwin-arm64.tar.gz"
      sha256 "0d53442b22eff1b97e4316047f11b87b57f9dac550b97c29eb4e911402c6e99a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.470/reactor-cli_v1.20261109.470_darwin-amd64.tar.gz"
      sha256 "2f2b26ddd67a9aa0e114fe83cfd6619eff95cb1dc271ce13f7860ce320f82377"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.470/reactor-cli_v1.20261109.470_linux-arm64.tar.gz"
      sha256 "97a2a256d09276522a99cc8488cea3d9313f925d630a9b5b22e6468dd1c78115"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.470/reactor-cli_v1.20261109.470_linux-amd64.tar.gz"
      sha256 "e54c046a00534885d2d4535fbbd6135701e239b36e254a3d55cc48e601aed200"
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
