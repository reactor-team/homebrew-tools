# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.420"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.420/reactor-cli_v1.20261111.420_darwin-arm64.tar.gz"
      sha256 "29f68f4baa36bbc4c8639be8abde2df1622a445527920178e43532337d12114f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.420/reactor-cli_v1.20261111.420_darwin-amd64.tar.gz"
      sha256 "d813ce8e4d2f5c4af82066e3d4780a4e23d662e8fbba9bfba0f10c88710d9342"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.420/reactor-cli_v1.20261111.420_linux-arm64.tar.gz"
      sha256 "d238770410662ac6f75893ead99bd654b3fbd3532e5a0e78d31640321453b8ed"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.420/reactor-cli_v1.20261111.420_linux-amd64.tar.gz"
      sha256 "859d95573a87b01ee0e05fe28c085552d1ec76173c2d82369cf299d77a8daf3e"
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
