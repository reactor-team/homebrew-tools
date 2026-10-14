# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261014.187"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.187/reactor-cli_v1.20261014.187_darwin-arm64.tar.gz"
      sha256 "58ddc29b8d4f2acff8f6f99575d6fc23f464294f34758e4a68db0d7fc889a842"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.187/reactor-cli_v1.20261014.187_darwin-amd64.tar.gz"
      sha256 "26b161ac6c181936d3b5e5e51ce1d9e2a668005263348b96ccaa662f48e627fd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.187/reactor-cli_v1.20261014.187_linux-arm64.tar.gz"
      sha256 "4643838a799348e70fe0590cdf20e1be1c3959ffe6447189e6487add4fd8bd0b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.187/reactor-cli_v1.20261014.187_linux-amd64.tar.gz"
      sha256 "73ec1359acff03c13ff13f268485e0303deb1533135f61abf61306c4ffb95945"
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
