# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.91"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.91/reactor-cli_v1.20261112.91_darwin-arm64.tar.gz"
      sha256 "aff0c12317eedc03a6c76590a7ce2beb8c324a160db1af2f6c04752d6c29c341"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.91/reactor-cli_v1.20261112.91_darwin-amd64.tar.gz"
      sha256 "0cf378571997234381508c878f6e9fa14b2c2d24ecfdca9950281ead9add308e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.91/reactor-cli_v1.20261112.91_linux-arm64.tar.gz"
      sha256 "05e604cadb1077e58ee9b970723fcac396a63fcd7aff09ea5f8ad65ca8dc11bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.91/reactor-cli_v1.20261112.91_linux-amd64.tar.gz"
      sha256 "efb0882cdc558f27be1923eb36a8c3d3661601e8f9a4131148ab6f2ab2774cd0"
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
