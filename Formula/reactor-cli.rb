# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.124"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.124/reactor-cli_v1.20261111.124_darwin-arm64.tar.gz"
      sha256 "26b5f06a64a26e31ee39c48f084f6447ad1ef7b79699480ae25dd1bfe066cf96"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.124/reactor-cli_v1.20261111.124_darwin-amd64.tar.gz"
      sha256 "93b178d88207cb995164d45e547d10e17666bf13a13ea0183de2890354bbc6c5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.124/reactor-cli_v1.20261111.124_linux-arm64.tar.gz"
      sha256 "72e29e4dd8001b1a8f41b24b4e47aae7c9904d4cbc16868117f466a75c354b10"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.124/reactor-cli_v1.20261111.124_linux-amd64.tar.gz"
      sha256 "723a70d029d5ba7edcf744a7a252446033b7cbab2b8ff34188c865dc21bde9a1"
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
