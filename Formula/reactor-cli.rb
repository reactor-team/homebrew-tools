# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.358"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.358/reactor-cli_v1.20261111.358_darwin-arm64.tar.gz"
      sha256 "5ea40d570970c8ad70bf52c32896a0c0589d8e6832cd4c2541214998f0b9912f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.358/reactor-cli_v1.20261111.358_darwin-amd64.tar.gz"
      sha256 "92689fa5178b69dcfb313ce91b362eed0f6c31fe0c06a704bda12378c840da1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.358/reactor-cli_v1.20261111.358_linux-arm64.tar.gz"
      sha256 "dfda8e0e9aade8652417c6ce2a37f527c1eb035f7639d5dbdd99cc2fb8c95a8c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.358/reactor-cli_v1.20261111.358_linux-amd64.tar.gz"
      sha256 "e167e0ebcff69781294a18fb6ef45854ae40640e7b41cace429b87a3484cf722"
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
