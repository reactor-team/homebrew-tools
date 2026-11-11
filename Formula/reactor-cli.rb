# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.342"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.342/reactor-cli_v1.20261111.342_darwin-arm64.tar.gz"
      sha256 "de50daa82589a31936ddbe6b04568f3a6b4e5834196436854111366beafcc1be"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.342/reactor-cli_v1.20261111.342_darwin-amd64.tar.gz"
      sha256 "135c3cf2c281c0e87bbf90fb79e70a9d1e442b7a23090686c72acb9706ae499f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.342/reactor-cli_v1.20261111.342_linux-arm64.tar.gz"
      sha256 "b8fb1a89ce9edf22a224af797958b6a6fb3fabe6ddfb1edc24ebb4c9547571a9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.342/reactor-cli_v1.20261111.342_linux-amd64.tar.gz"
      sha256 "27ed1a08cd815808eb0d059462829747085692c939b4ce2c53ac3a6f464a9a2c"
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
