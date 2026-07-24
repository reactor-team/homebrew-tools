# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19157"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19157/reactor-cli_v1.20260724.19157_darwin-arm64.tar.gz"
      sha256 "817af2932014076ddd8da0768435761dcc8940419decf464c66cf4f14193682e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19157/reactor-cli_v1.20260724.19157_darwin-amd64.tar.gz"
      sha256 "9adf8392e08a3b91b533467c26b129a2a4d3ea5c2af60d92f838ea8dffa9d674"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19157/reactor-cli_v1.20260724.19157_linux-arm64.tar.gz"
      sha256 "828ed17de31fbb1d7ae9c0fee3adc5c7011bd477bf3869b54ff96cda34329ac6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19157/reactor-cli_v1.20260724.19157_linux-amd64.tar.gz"
      sha256 "eff2f2703dbd3136236aa0b0eecf75b89df879f21a2c53a0994767efc9d483ca"
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
