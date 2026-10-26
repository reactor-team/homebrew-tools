# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.213"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.213/reactor-cli_v1.20261026.213_darwin-arm64.tar.gz"
      sha256 "7958e246a16a263b82cf4fa9fd1f9c35b5f10d61a38c3787ae894dc8ef33ad50"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.213/reactor-cli_v1.20261026.213_darwin-amd64.tar.gz"
      sha256 "7d0a301a9c247a612bb1c1fb6eca2937540f1b211b62b8513effa5be928d7e3f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.213/reactor-cli_v1.20261026.213_linux-arm64.tar.gz"
      sha256 "d6633f3aecf3a7862fb4f5a6cb613ec4e1412920aa445a52fec84a3f5c3fd144"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.213/reactor-cli_v1.20261026.213_linux-amd64.tar.gz"
      sha256 "12866b29fc9d971eeb93e6ceb98f10ae476c18aff5331eb184b58a20b908dd84"
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
