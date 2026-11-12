# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.421"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.421/reactor-cli_v1.20261112.421_darwin-arm64.tar.gz"
      sha256 "2a75a50ce8118ecf40797d1828a5795958c1be20f98154a95eecacaec640aeef"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.421/reactor-cli_v1.20261112.421_darwin-amd64.tar.gz"
      sha256 "5e706e6c91063cb425c31c570c129857d10484ad9c037c269503422b3ba7a3cb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.421/reactor-cli_v1.20261112.421_linux-arm64.tar.gz"
      sha256 "7ea494797b50109c63b248d27964d812b6adb94c1a6817f3b80f187d834417c2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.421/reactor-cli_v1.20261112.421_linux-amd64.tar.gz"
      sha256 "2089f3ffa02e518604ded9528e22665cf004619eeadc7e430078c889255eb289"
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
