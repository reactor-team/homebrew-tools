# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.44"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.44/reactor-cli_v1.20261023.44_darwin-arm64.tar.gz"
      sha256 "78f47b481977b0322f3d41f702f0ad58a813916e5549a0501a9b1570b9becce4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.44/reactor-cli_v1.20261023.44_darwin-amd64.tar.gz"
      sha256 "618899da8a881aad309735c24d85852f06a694411e8852dfd89340b050bb37a7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.44/reactor-cli_v1.20261023.44_linux-arm64.tar.gz"
      sha256 "ad58434d94f17a8cb614de9cd5f13447206e5a0e4dc88ad8490e13072bf2d3ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.44/reactor-cli_v1.20261023.44_linux-amd64.tar.gz"
      sha256 "267ef22feb7d4ea3f37d8b9c0ad55260222dc9805e908acf2b052b5fbbd374fd"
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
