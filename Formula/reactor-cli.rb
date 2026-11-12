# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.405"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.405/reactor-cli_v1.20261112.405_darwin-arm64.tar.gz"
      sha256 "dc6ed32bf472714509c076a12573f507bf54a2ed9f073aaf42261924b96c5458"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.405/reactor-cli_v1.20261112.405_darwin-amd64.tar.gz"
      sha256 "7f28fe747a2f2fb5daef3dc1773d570f8ccb9ea5fb814c022d3b2b70e7c465bf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.405/reactor-cli_v1.20261112.405_linux-arm64.tar.gz"
      sha256 "eaffe3487a20058f90be962745dcf5289ddfb2c284478dd4a4b689fca9371b91"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.405/reactor-cli_v1.20261112.405_linux-amd64.tar.gz"
      sha256 "e58c5dd6d284950231477f482aefa1b9d0b0adec618e7706d143a1db889696f1"
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
