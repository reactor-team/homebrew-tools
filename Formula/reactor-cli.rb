# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260804.20769"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20769/reactor-cli_v1.20260804.20769_darwin-arm64.tar.gz"
      sha256 "1995ea13ca000a4173487e6d392e4b36478bba9f060af40b6d7f126d0fb647c6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20769/reactor-cli_v1.20260804.20769_darwin-amd64.tar.gz"
      sha256 "84d4aae4e4855299cbf507e1b1255816891b818a366d7a14463520867a11a099"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20769/reactor-cli_v1.20260804.20769_linux-arm64.tar.gz"
      sha256 "8bc89cb667ad6d05ba415bdff3dc21ddf89485ef92fcbe9a2517b4855dfe4230"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20769/reactor-cli_v1.20260804.20769_linux-amd64.tar.gz"
      sha256 "2ac8f709ab9759b95aebdb48d84d2cb7f6f83d0405d55bffbd31298a8c6f6c4c"
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
