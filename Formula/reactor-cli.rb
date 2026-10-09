# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.91"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.91/reactor-cli_v1.20261009.91_darwin-arm64.tar.gz"
      sha256 "9ba86aa9df0e67c41aeac0e12312230526b5aa6e2786515f750f36751b68e7cf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.91/reactor-cli_v1.20261009.91_darwin-amd64.tar.gz"
      sha256 "3ca20d04ab4722b4e443eda26ab9687563e04a4b7fa9092cebcc5248ca7e7553"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.91/reactor-cli_v1.20261009.91_linux-arm64.tar.gz"
      sha256 "5e19cc2b8c441e751123e44286651ed301483dab177eb2e46d6b1053987e4f86"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.91/reactor-cli_v1.20261009.91_linux-amd64.tar.gz"
      sha256 "fed0bd0877be7f4a107626b5588c919b6a865f23a018aee1815bb73764c89045"
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
