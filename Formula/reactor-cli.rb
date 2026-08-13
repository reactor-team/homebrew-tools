# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260813.21764"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21764/reactor-cli_v1.20260813.21764_darwin-arm64.tar.gz"
      sha256 "c8af99cff5b22b76537e14bac6d04db7e93380440776ef15caa77dda2c651287"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21764/reactor-cli_v1.20260813.21764_darwin-amd64.tar.gz"
      sha256 "330c885dc4fc7fbc89500d8213bd9a9bf342f69d562263220b19569190c0a73f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21764/reactor-cli_v1.20260813.21764_linux-arm64.tar.gz"
      sha256 "400f676f99447bff71c82197e2924e08c9aa34e7fa61ba3569c23fa0176384f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21764/reactor-cli_v1.20260813.21764_linux-amd64.tar.gz"
      sha256 "98cdd35d13b6a0f52a2b6437d63b7b44ad12774e1d2485b513be77e998070597"
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
