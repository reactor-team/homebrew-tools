# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260602.14848"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14848/reactor-cli_v1.20260602.14848_darwin-arm64.tar.gz"
      sha256 "48ed2832c303d64fe1e3f83cc8337005b03caae564351163787c7d4468ec9a6e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14848/reactor-cli_v1.20260602.14848_darwin-amd64.tar.gz"
      sha256 "b20f52fe0227da92febed32e00a2675dc74fd812208423e8981433bb3393eba9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14848/reactor-cli_v1.20260602.14848_linux-arm64.tar.gz"
      sha256 "b65c874c957bcf301b426e0750b6fe1e2993399ec865d3e20b3b345a677a0a47"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14848/reactor-cli_v1.20260602.14848_linux-amd64.tar.gz"
      sha256 "9afd29ac2da08eed14fdce6c2e4622ce4d80a3b05b48fb329f37966a28435d2a"
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
