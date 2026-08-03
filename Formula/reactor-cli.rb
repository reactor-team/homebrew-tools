# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260803.20550"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260803.20550/reactor-cli_v1.20260803.20550_darwin-arm64.tar.gz"
      sha256 "3f32d5ae8d4fd6daffd88aec2fcf0488ae3c6891135a55f3c6ddd5514a6afd3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260803.20550/reactor-cli_v1.20260803.20550_darwin-amd64.tar.gz"
      sha256 "7ebb40001e4a6f7e05765e8c4c832b9578c49701fcc1e1a77a69544fc641fc8b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260803.20550/reactor-cli_v1.20260803.20550_linux-arm64.tar.gz"
      sha256 "8dc75f64209d9bf6139f7913026aacbe30abce0a0c35f454315a4d7c0e606520"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260803.20550/reactor-cli_v1.20260803.20550_linux-amd64.tar.gz"
      sha256 "9b8bc9dfb0b6225bf171056735d917c81e6519eeb1532c0a728e93f436157c4d"
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
