# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.1/reactor-cli_v1.20261008.1_darwin-arm64.tar.gz"
      sha256 "d66ec46ff4ebe44a9eea88a63ef08bb88ae59b3e6181053ea0546f7af2964e1b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.1/reactor-cli_v1.20261008.1_darwin-amd64.tar.gz"
      sha256 "b6cbc505e1697690f6c2eee3238b8a526ddb7c0115ac042094795f28d66b3046"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.1/reactor-cli_v1.20261008.1_linux-arm64.tar.gz"
      sha256 "98815c30f5489ba383f8e272420cecd566a058e9b157a5f946052f9566bb28dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.1/reactor-cli_v1.20261008.1_linux-amd64.tar.gz"
      sha256 "14bbd00c614c676a89d309e66786a2923d5d50ac26866b1fe1e7740306d0983b"
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
