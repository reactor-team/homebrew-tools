# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.341"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.341/reactor-cli_v1.20261015.341_darwin-arm64.tar.gz"
      sha256 "122ed8b815224f77e2c4108fb24db19c82306d4c48cd6c3d4869d8594adaba93"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.341/reactor-cli_v1.20261015.341_darwin-amd64.tar.gz"
      sha256 "a92582d369106d46b307117baed010d89af93caf6234f7fd90d6bb93467a5dfc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.341/reactor-cli_v1.20261015.341_linux-arm64.tar.gz"
      sha256 "6ad6e4ce9cc2ba0907331893d6642f649892093bd2414cb9b72d86b30295a2fc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.341/reactor-cli_v1.20261015.341_linux-amd64.tar.gz"
      sha256 "04037b7e3717d2f7378442ed3f702b3c9e55385329d389957640dc93245be3f2"
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
