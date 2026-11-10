# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.322"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.322/reactor-cli_v1.20261110.322_darwin-arm64.tar.gz"
      sha256 "3b1570496ea27e4824c2969b5b316f48f3304fd36f0b9dfc468bed5e9ca82c1e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.322/reactor-cli_v1.20261110.322_darwin-amd64.tar.gz"
      sha256 "057852a49db9b7e34b635566ca1dd2469ba5d511f5e1cb77fb851d4c91dc911e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.322/reactor-cli_v1.20261110.322_linux-arm64.tar.gz"
      sha256 "3ee6dbcdb5b446e153c157fe387eead5904074efc611532809553bda608a8428"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.322/reactor-cli_v1.20261110.322_linux-amd64.tar.gz"
      sha256 "91dc5bed68e6f2fd7fee4e05b8070a73a733ad34a81c1303b28ff477285d0894"
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
