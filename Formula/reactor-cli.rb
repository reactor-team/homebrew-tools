# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.415"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.415/reactor-cli_v1.20261013.415_darwin-arm64.tar.gz"
      sha256 "a9791a18ab9b86718772d8f41a507e97c649a0edd0dc8b7f9114f47b2313ebb5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.415/reactor-cli_v1.20261013.415_darwin-amd64.tar.gz"
      sha256 "0e756b09b9eb665380b3e05499644c25680b1276376718263abdf8fe141471ab"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.415/reactor-cli_v1.20261013.415_linux-arm64.tar.gz"
      sha256 "2eb372cb77b7a4819611c739a9b0514689ff1683ff94d9d5c53cc0daee628171"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.415/reactor-cli_v1.20261013.415_linux-amd64.tar.gz"
      sha256 "f3bd5f21e179d61773091d62970b0fad334cddf9586097198593625e957b9462"
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
