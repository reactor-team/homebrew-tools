# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.97"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.97/reactor-cli_v1.20260929.97_darwin-arm64.tar.gz"
      sha256 "9b383f809c081193f0ae76306757f7257d39ccb0525da9e1a0c6d5b5aac16417"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.97/reactor-cli_v1.20260929.97_darwin-amd64.tar.gz"
      sha256 "4f6cf79dbd57fc1043a53f889959aaa8b9bd2058a26ffdf70c9118dded31aebb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.97/reactor-cli_v1.20260929.97_linux-arm64.tar.gz"
      sha256 "57e9c0afd0f8529a9c7f0f81d657686e8c84a2bedd5664f14e4ffe8a93ca001d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.97/reactor-cli_v1.20260929.97_linux-amd64.tar.gz"
      sha256 "a388ec8e326beda3d067ce11d392ed6d0c31e847aae6df767e855ff26f9f7bbf"
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
