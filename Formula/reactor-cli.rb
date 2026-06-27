# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16843"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16843/reactor-cli_v1.20260627.16843_darwin-arm64.tar.gz"
      sha256 "7633f04e9ce1266171cb2d98f8c71a8f8eb0e1f9f898f45ecf6f70e2007876ec"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16843/reactor-cli_v1.20260627.16843_darwin-amd64.tar.gz"
      sha256 "5e897906f7901771383d0b84f98d99785120be4022caf1443bd59c2d3be1a12c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16843/reactor-cli_v1.20260627.16843_linux-arm64.tar.gz"
      sha256 "bb83620d5018d766cb5e309bf34573baddbfbd27f98d968f6ad70f797b430286"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16843/reactor-cli_v1.20260627.16843_linux-amd64.tar.gz"
      sha256 "f655bec4e2406a12f15dccf42ca77720ad6643d6ff24d91d4a8bdd43632c8672"
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
