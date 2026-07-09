# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260709.17995"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17995/reactor-cli_v1.20260709.17995_darwin-arm64.tar.gz"
      sha256 "f7830eb6b5c4fcb82223c20fde8af69fdb4fca526a342f5a5e96b78eb032e793"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17995/reactor-cli_v1.20260709.17995_darwin-amd64.tar.gz"
      sha256 "17c4acc6e3ce20ab435aad74606963812b965f14d767b195d0a8a5ae9d60c94c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17995/reactor-cli_v1.20260709.17995_linux-arm64.tar.gz"
      sha256 "1d6961ca14aad855a104f5b227ba8de417f1b06d36fbb75ba330800e2bef43eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17995/reactor-cli_v1.20260709.17995_linux-amd64.tar.gz"
      sha256 "eba33d8a801a0f6d593e3ea7825dd628241f87551a7df593bfe7c5e2c94a8b89"
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
