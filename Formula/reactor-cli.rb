# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.666"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.666/reactor-cli_v1.20261109.666_darwin-arm64.tar.gz"
      sha256 "351a4dba020d40644eade67db2ac3a3a1392848eb278c8530a9af3108feab5c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.666/reactor-cli_v1.20261109.666_darwin-amd64.tar.gz"
      sha256 "ec109f5de75ac370c3e0e75a0638f10897f4cb05ab1d1e73818494c78ded9eda"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.666/reactor-cli_v1.20261109.666_linux-arm64.tar.gz"
      sha256 "db90f81544bb39994a32f9e301d21658096aa7a0206e120249b584541f3495bc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.666/reactor-cli_v1.20261109.666_linux-amd64.tar.gz"
      sha256 "f313a4fe3af6857113c5fc49af95e7a47fcb421a2981caadb37784d39e0e1bd9"
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
