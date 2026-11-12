# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.601"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.601/reactor-cli_v1.20261112.601_darwin-arm64.tar.gz"
      sha256 "3d6898ce851032e93d6a69b2ebfc1f8eb99ade06c871f5cc2b8e42eac2680c1e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.601/reactor-cli_v1.20261112.601_darwin-amd64.tar.gz"
      sha256 "582159c146cb0a92609266848def634d5a2dd8825ea25f9d0bef64330bf04bf4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.601/reactor-cli_v1.20261112.601_linux-arm64.tar.gz"
      sha256 "b56a87ab084b3a197ff1526eb11563af331eb189c573be512dc5a7743bf6f03c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.601/reactor-cli_v1.20261112.601_linux-amd64.tar.gz"
      sha256 "5e937521d3a73d5dc9df6bccc6a50ec63f7b7a03eeb886d50150b47d5d7d6c24"
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
