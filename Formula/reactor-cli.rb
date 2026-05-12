# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260512.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.11/reactor-cli_v1.20260512.11_darwin-arm64.tar.gz"
      sha256 "c35be1418422769e0784ba5e2e73f48d802836051b2492bd7231b857837cae31"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.11/reactor-cli_v1.20260512.11_darwin-amd64.tar.gz"
      sha256 "32ad3230c94fd40a3c4fe277e0a921d888d66245c5d9623eddd3074325de037f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.11/reactor-cli_v1.20260512.11_linux-arm64.tar.gz"
      sha256 "4d9827690bbe7a84f39002de914aed31f31b81653c5905f68040336792af67b4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.11/reactor-cli_v1.20260512.11_linux-amd64.tar.gz"
      sha256 "d61ecb116eeabb98f61eba16c9905dbb8432703355f6a6bf15467abf007c8ae3"
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
