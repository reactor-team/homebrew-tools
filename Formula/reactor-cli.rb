# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.236"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.236/reactor-cli_v1.20261102.236_darwin-arm64.tar.gz"
      sha256 "fb162b918f762602c470643bf7c57c01b13ed7dd53830ccfa273b0b21ae2f4c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.236/reactor-cli_v1.20261102.236_darwin-amd64.tar.gz"
      sha256 "12b553818405d104d1ccffaa8f8953e74b181bace822dd756389e903ebb3e357"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.236/reactor-cli_v1.20261102.236_linux-arm64.tar.gz"
      sha256 "493dd95551b23c5dad180c7e43ba033866da697399b8a66f45a54a54a726a071"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.236/reactor-cli_v1.20261102.236_linux-amd64.tar.gz"
      sha256 "31f9855eb6d66bcb8ca0e757a60483bbb327f7242be1391e351e600730b2701c"
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
