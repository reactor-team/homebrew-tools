# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260811.21478"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21478/reactor-cli_v1.20260811.21478_darwin-arm64.tar.gz"
      sha256 "9b2893ff7f1be638794d0d06588d60d0f764e2a5325622cbed67338abed5154b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21478/reactor-cli_v1.20260811.21478_darwin-amd64.tar.gz"
      sha256 "186e4b994ddc1a63dbf0849b24c6d47fc93d86d846949d0357b09113f9c04c6e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21478/reactor-cli_v1.20260811.21478_linux-arm64.tar.gz"
      sha256 "e3d1fa4b650c4503b338edaaf9ac55303bd0486887e727c185d673baf62d344f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21478/reactor-cli_v1.20260811.21478_linux-amd64.tar.gz"
      sha256 "6ca9330cb28a420bd008ab340466f2ad915d2ff0c37b8b8c33dc92e691630c22"
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
