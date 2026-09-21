# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28070"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28070/reactor-cli_v1.20260921.28070_darwin-arm64.tar.gz"
      sha256 "e750e51d2afd80b97e3d2ef0b9136cabd6f5a00994b069e87b8f5fedfcf8044d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28070/reactor-cli_v1.20260921.28070_darwin-amd64.tar.gz"
      sha256 "1126edaf02481c779c32b0afe247b53f84401abecdda872bcf6f58947710c6be"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28070/reactor-cli_v1.20260921.28070_linux-arm64.tar.gz"
      sha256 "f448c01a717f708c4f14a7eca6d108b53a587b4f71ceb434d4ec7e8c333f34e5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28070/reactor-cli_v1.20260921.28070_linux-amd64.tar.gz"
      sha256 "17fd4383b7fb7e59ec720e07af37a19ad098b4bec8b3516d5a5fbe74a7795eb3"
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
