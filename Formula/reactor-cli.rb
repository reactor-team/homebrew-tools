# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.127"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.127/reactor-cli_v1.20260929.127_darwin-arm64.tar.gz"
      sha256 "2e0f6d303ef1cbc07b146e13800b28dc39cace37d00e551360c2bbd73972315f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.127/reactor-cli_v1.20260929.127_darwin-amd64.tar.gz"
      sha256 "e4f8be51c085dd9fe57c4945bfd904a9a6e34ff9816b532cc20ee4b98f2d0274"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.127/reactor-cli_v1.20260929.127_linux-arm64.tar.gz"
      sha256 "314e794b4d0b0e30de20534c7a707686ee97b397cdc2dbc41a43913aa23ac586"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.127/reactor-cli_v1.20260929.127_linux-amd64.tar.gz"
      sha256 "ba1c554ab718091cb69b8646cc364cad438c13115f71ce2d4060d57eed3b51be"
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
