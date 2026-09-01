# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24224"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24224/reactor-cli_v1.20260901.24224_darwin-arm64.tar.gz"
      sha256 "2818f0bb69823b54f08cdd1b0de5c9175cac0686cbe1f6c01a9740d4ceec9173"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24224/reactor-cli_v1.20260901.24224_darwin-amd64.tar.gz"
      sha256 "57e90c6b902d441d518c8af72bb2c791027a7d9e39772f9d5027529a6e09e99c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24224/reactor-cli_v1.20260901.24224_linux-arm64.tar.gz"
      sha256 "b8a8d19dcce66a7ef9bf674e1853e10cdb12522c36ad1604c93fef5d9b878fa0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24224/reactor-cli_v1.20260901.24224_linux-amd64.tar.gz"
      sha256 "8c65e9c7c4037dfb90d902ee0e0dada13319789a40fa8b15f8467a76b79fc98e"
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
