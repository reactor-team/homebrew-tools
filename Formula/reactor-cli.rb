# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22557"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22557/reactor-cli_v1.20260820.22557_darwin-arm64.tar.gz"
      sha256 "c5f4c125c0cf042a561a6141088186ac3bae646ab442a868755023b7d20183ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22557/reactor-cli_v1.20260820.22557_darwin-amd64.tar.gz"
      sha256 "e67a2e68c063b310a7fe3ed5f6611b53180ee193d5911e3d27a222f7047ce3f9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22557/reactor-cli_v1.20260820.22557_linux-arm64.tar.gz"
      sha256 "cf41e8b40dd3e389a3be8b65a0c865988ec91ba32a5194b0084689a8dd34b16f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22557/reactor-cli_v1.20260820.22557_linux-amd64.tar.gz"
      sha256 "0a6d76d6519ee33dd4e71569a0e9d05289ce439b646bc20692e6629f3589a89e"
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
