# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.103"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.103/reactor-cli_v1.20261002.103_darwin-arm64.tar.gz"
      sha256 "d469b75d176ed499a90b117b5f9f896a5522e58262180a6ad392c8f96a761721"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.103/reactor-cli_v1.20261002.103_darwin-amd64.tar.gz"
      sha256 "742725e871a24a143dbd79980fdc8ee1bf70f6ff0c3cd68df47cccb1673ad17c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.103/reactor-cli_v1.20261002.103_linux-arm64.tar.gz"
      sha256 "b57357cc1636207da7f7081bec488c4037dab152aa17b03efcc44c94a3e2abb9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.103/reactor-cli_v1.20261002.103_linux-amd64.tar.gz"
      sha256 "d7fb9b092b79269ea0ab77071d423eec9e8645186cf50353b9db349a7ac79e22"
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
