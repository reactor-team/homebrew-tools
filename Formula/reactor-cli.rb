# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261016.75"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.75/reactor-cli_v1.20261016.75_darwin-arm64.tar.gz"
      sha256 "a63deea5fd9f31bf06d82465fc5c3cfd749d8a2b9dd0894f4dde8ea4a720e3a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.75/reactor-cli_v1.20261016.75_darwin-amd64.tar.gz"
      sha256 "91ce6b099eaaa37d3f58700c3e4e93ef725a0e7d46cd082c629117153dd36a9c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.75/reactor-cli_v1.20261016.75_linux-arm64.tar.gz"
      sha256 "806b188ecee562c9aa6219982239f2908d576ac70da30c3b76d5097648e967dc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.75/reactor-cli_v1.20261016.75_linux-amd64.tar.gz"
      sha256 "c6c2de130fae2f91ccfa8ae3e1b955d0b58fc7be97e00c936590ad80c306bcb6"
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
