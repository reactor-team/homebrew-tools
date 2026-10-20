# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.73"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.73/reactor-cli_v1.20261020.73_darwin-arm64.tar.gz"
      sha256 "f759bec8e2fda34d0e934492cd39348d5289210cccf6477399e68245446a0f2b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.73/reactor-cli_v1.20261020.73_darwin-amd64.tar.gz"
      sha256 "ad870cc59ffebed1a4ab6aeb62f846d48eed954dc5037a707a895aff3ab3e381"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.73/reactor-cli_v1.20261020.73_linux-arm64.tar.gz"
      sha256 "58087d2fc46545e5a0e5a69da090fa2c4fee6a015c3577458ca14b7ce9cd979b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.73/reactor-cli_v1.20261020.73_linux-amd64.tar.gz"
      sha256 "77db6079c23a028fcad3bb00c4de2e35ffc1a7ca626523283decc2c92ef758c1"
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
