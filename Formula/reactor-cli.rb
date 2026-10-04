# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261004.172"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.172/reactor-cli_v1.20261004.172_darwin-arm64.tar.gz"
      sha256 "a125da3ab1f888b788789772860499f3b7a22d5b90156b4546f982855d698ba7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.172/reactor-cli_v1.20261004.172_darwin-amd64.tar.gz"
      sha256 "017a002094ce37a2ff7ab721684c5fdac8a7107f3993b4926137d0fdb15801d1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.172/reactor-cli_v1.20261004.172_linux-arm64.tar.gz"
      sha256 "2ab1791ec9b83151c6cfa9760856c6911c22078e00413c02fe7bc1bf6a91b8fd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.172/reactor-cli_v1.20261004.172_linux-amd64.tar.gz"
      sha256 "1db49b3f6fc9b9e2f562b00feb0e70214e617b0c804e7b5493f54fa21ccf8130"
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
