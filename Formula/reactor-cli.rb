# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.160"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.160/reactor-cli_v1.20261015.160_darwin-arm64.tar.gz"
      sha256 "e62174ef4b88bd45835009bd868c8166a1cd1ba9af3a6fba4f0712601366a6b8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.160/reactor-cli_v1.20261015.160_darwin-amd64.tar.gz"
      sha256 "926a87b7ccaf5a30b50054f8b99f905dc0e927b052294e7b60dde6c4da660ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.160/reactor-cli_v1.20261015.160_linux-arm64.tar.gz"
      sha256 "0997b38561949bacb524c9ba67d7c82705b8c70312217b3dcc7b5dd868be764c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.160/reactor-cli_v1.20261015.160_linux-amd64.tar.gz"
      sha256 "cfc10cc67415093db45a5022ee1724d6ae3dcc7212d6a2d0033a1d1c697435c7"
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
