# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.218"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.218/reactor-cli_v1.20261002.218_darwin-arm64.tar.gz"
      sha256 "39970350b857f355e8ec667e1f9c9a0f3c44bbf4c5b0917a3da78c6a54a2b170"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.218/reactor-cli_v1.20261002.218_darwin-amd64.tar.gz"
      sha256 "30ff23d7a8261f81c68f61ecc1dc72d66ef9573b36801b3b9270715808434f87"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.218/reactor-cli_v1.20261002.218_linux-arm64.tar.gz"
      sha256 "0154a0a403c935cdb61f631e512cda497cc46f655f957754f61c96b00fe96842"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.218/reactor-cli_v1.20261002.218_linux-amd64.tar.gz"
      sha256 "e46b80c4b5c86fff3e1e7237f659133e319bbb203c682e20aad429f249027bc3"
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
