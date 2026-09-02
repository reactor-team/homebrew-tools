# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260902.24518"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24518/reactor-cli_v1.20260902.24518_darwin-arm64.tar.gz"
      sha256 "f18a1379a5570a44803342a15be34ed46173d519a354d8c47e9bfab1c3064b1c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24518/reactor-cli_v1.20260902.24518_darwin-amd64.tar.gz"
      sha256 "bcc470c1f5365371f227024e776dde1fc04c1e6c1b81e8fccc8e7c8e7f03e1b9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24518/reactor-cli_v1.20260902.24518_linux-arm64.tar.gz"
      sha256 "4a650d4ff316ddee73441f8c41f513f3166c56610865aba5e22691549752d014"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24518/reactor-cli_v1.20260902.24518_linux-amd64.tar.gz"
      sha256 "66f965409642b852dfcf4db5b09b4e50d9de68ee4bc09c0e80aa18e933096b32"
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
