# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260825.23243"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23243/reactor-cli_v1.20260825.23243_darwin-arm64.tar.gz"
      sha256 "3bf6115791a765f5a572b8b8227f5d8662b7e1edbb8c1944bb9cfa7bfd7467ce"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23243/reactor-cli_v1.20260825.23243_darwin-amd64.tar.gz"
      sha256 "0f449ebbdd9ab78926e9d0028f552b96a204ab6e100d877cf226c302c282afc2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23243/reactor-cli_v1.20260825.23243_linux-arm64.tar.gz"
      sha256 "74bcdcd5f598afdb6fa414768e8d98ca21ebd7cc47ff9968059f25b52fd79390"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23243/reactor-cli_v1.20260825.23243_linux-amd64.tar.gz"
      sha256 "a9f2075c8df991eb2b7c5c5d0d61e9de9f666fe891ffade460af1ee778d2cdb9"
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
