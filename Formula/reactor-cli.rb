# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.545"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.545/reactor-cli_v1.20261106.545_darwin-arm64.tar.gz"
      sha256 "d6d1328d460c5e0e4e0a70bb229743d003069bcb47ae3df22103c4a7e5dcfbb4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.545/reactor-cli_v1.20261106.545_darwin-amd64.tar.gz"
      sha256 "c13b169b765ab4d4e0dc60056da72306d27498f4ea9f302f189dea6cc76649b7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.545/reactor-cli_v1.20261106.545_linux-arm64.tar.gz"
      sha256 "41884ef6740162877163738b1bd0d2627639b84e04f2b0c0bbdb203cfc54bc40"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.545/reactor-cli_v1.20261106.545_linux-amd64.tar.gz"
      sha256 "8341debb0681e19b0ca56117138d50de9fe492a96420ecd5199ea3f4f6ac3590"
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
