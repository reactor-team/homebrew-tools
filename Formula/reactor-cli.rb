# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261016.130"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.130/reactor-cli_v1.20261016.130_darwin-arm64.tar.gz"
      sha256 "60b812a6096b02c79adeb63d687fdf796caf199b149feb01f1036dca11676a8e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.130/reactor-cli_v1.20261016.130_darwin-amd64.tar.gz"
      sha256 "8cf0c81ae2d0a623ec63747f66f7b5f6b21b6090b80dfa42d7fc3742b478c878"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.130/reactor-cli_v1.20261016.130_linux-arm64.tar.gz"
      sha256 "a23cf55d24e28b70854903ff7009a959ea3f5b83929f0f1815487e701ea46218"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.130/reactor-cli_v1.20261016.130_linux-amd64.tar.gz"
      sha256 "f8dd005c577ad8d4940710f31a2f3b6748654b48cfb7bb5d77bb25e6cc53797c"
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
