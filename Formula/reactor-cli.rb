# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260703.17291"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17291/reactor-cli_v1.20260703.17291_darwin-arm64.tar.gz"
      sha256 "2b2e8f2187439bb2dc999675d300e396564bff5f2b2411ff9c12175afdecfd69"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17291/reactor-cli_v1.20260703.17291_darwin-amd64.tar.gz"
      sha256 "a92ec7b46918b2813fb517a8331aad15b3475eb7a6ed22eec7bce4b6a87b774d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17291/reactor-cli_v1.20260703.17291_linux-arm64.tar.gz"
      sha256 "e36a6e4df82eb3b001763bca75871e7292f801bb58a474f5fc154cf0d5153e99"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17291/reactor-cli_v1.20260703.17291_linux-amd64.tar.gz"
      sha256 "5510d68ed824aa07fcc522a84481dde172b3474ed3b8817a6d893798f8382c19"
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
