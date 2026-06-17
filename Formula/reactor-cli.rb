# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260617.16241"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16241/reactor-cli_v1.20260617.16241_darwin-arm64.tar.gz"
      sha256 "e8a8fe1c84759eba69180d0d22790dd058dbb24831f4913165a67de9cb2eb688"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16241/reactor-cli_v1.20260617.16241_darwin-amd64.tar.gz"
      sha256 "8fdd10d794483817f5b5f330d5a8768fc9b56a5f45128a3d49ac914a8e7ab76d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16241/reactor-cli_v1.20260617.16241_linux-arm64.tar.gz"
      sha256 "3fba1609919caddcbe31700d5b9d7a2440e139e120e2dbfd341815ca15030024"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16241/reactor-cli_v1.20260617.16241_linux-amd64.tar.gz"
      sha256 "586024545b31828413016ae2d6da8f2b55dde024a32bf8e897dc74cae4f82ddb"
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
