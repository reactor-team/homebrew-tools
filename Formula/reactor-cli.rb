# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260902.24630"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24630/reactor-cli_v1.20260902.24630_darwin-arm64.tar.gz"
      sha256 "7cbcc7898eb564649eb8c48c82ac1237347666a06077711cdb8bea82cc685f6b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24630/reactor-cli_v1.20260902.24630_darwin-amd64.tar.gz"
      sha256 "e3188316c21d4440803c684a496c9c571c932efd92a891340df322c881d6f1c6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24630/reactor-cli_v1.20260902.24630_linux-arm64.tar.gz"
      sha256 "ff5bc0c0e024f25620eddb8390a05206ffe35bab7b2709027da99b8e310037ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24630/reactor-cli_v1.20260902.24630_linux-amd64.tar.gz"
      sha256 "c633ecd09deabab68ec50f44e25847af2b5248bf5480355613657ed4c021a8fa"
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
