# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.339"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.339/reactor-cli_v1.20261013.339_darwin-arm64.tar.gz"
      sha256 "5eb02a9f7d068b813c5325403f31ce015914c0007ebb24a6a7169ea4cab1ca0b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.339/reactor-cli_v1.20261013.339_darwin-amd64.tar.gz"
      sha256 "defcf93f062bb283f05566aedbf898ccc898369edb7fd0f74fae973ddc1fec87"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.339/reactor-cli_v1.20261013.339_linux-arm64.tar.gz"
      sha256 "d8d6aac247d935d3faee3555b192e01fff30614813bfeb4583ada535bf4168ef"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.339/reactor-cli_v1.20261013.339_linux-amd64.tar.gz"
      sha256 "d33c6c14825bd2ccde3429761ecd39d818b7e70a6bc3e02ac7ffed6fb6171a6c"
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
