# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25596"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25596/reactor-cli_v1.20260910.25596_darwin-arm64.tar.gz"
      sha256 "dfad978b5f6c4e9c050a9142cbbd0da5a4823a5b32c76a316a475a64d10ce429"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25596/reactor-cli_v1.20260910.25596_darwin-amd64.tar.gz"
      sha256 "16fb61fb2f40088789e4dede59da01926401ef978883e286a54226e471fd84f7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25596/reactor-cli_v1.20260910.25596_linux-arm64.tar.gz"
      sha256 "c3da9936f1087cda68db16108b393b6031bd614ac778eb9dc5d2c88a6c39bb36"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25596/reactor-cli_v1.20260910.25596_linux-amd64.tar.gz"
      sha256 "a1d4201a8d0b756fdb79e66ba98ee1ce5301515d8e79dcc7e01219430400af12"
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
