# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.213"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.213/reactor-cli_v1.20261112.213_darwin-arm64.tar.gz"
      sha256 "6588cd198716107d37ac87b4c4477667d0c04c941eb6e19c6c8661cbe4f4367d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.213/reactor-cli_v1.20261112.213_darwin-amd64.tar.gz"
      sha256 "108bfd756e3bdd2f6aac51872647f569a8d2ca548446e8d37901f9685e1d4815"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.213/reactor-cli_v1.20261112.213_linux-arm64.tar.gz"
      sha256 "823f3ef1b0cee73a0479250a44213d85877cd45d3fbe87f1e9148856a0c70a49"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.213/reactor-cli_v1.20261112.213_linux-amd64.tar.gz"
      sha256 "6e23f79462d27d82ab473048126a6f8cb5e97533991a1fbd2adeb36c4a80b6f3"
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
