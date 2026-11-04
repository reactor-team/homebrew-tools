# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.203"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.203/reactor-cli_v1.20261104.203_darwin-arm64.tar.gz"
      sha256 "9d3719170d0b84cb17e15462fd46f963213ad0c9168a8d554c315f2198b9b27c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.203/reactor-cli_v1.20261104.203_darwin-amd64.tar.gz"
      sha256 "f8595c5c1f36916cdd4de479687ff04652f6fddad17465c74443688ee62efb02"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.203/reactor-cli_v1.20261104.203_linux-arm64.tar.gz"
      sha256 "9343e8f1d4d672feb237b79a7d1fba1f530d910c0bd86d3969f7db08c67156ec"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.203/reactor-cli_v1.20261104.203_linux-amd64.tar.gz"
      sha256 "2ee1f39493d3d1c5aa73dd28cc47ab12deeaf467f2771bbbbdb114d8682b54e7"
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
