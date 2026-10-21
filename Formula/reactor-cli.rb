# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.109"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.109/reactor-cli_v1.20261021.109_darwin-arm64.tar.gz"
      sha256 "d9abdb09d0ecf4b9fbac27a2f376525c3a69a31a8153eb4548e78fdd1109245a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.109/reactor-cli_v1.20261021.109_darwin-amd64.tar.gz"
      sha256 "93abc7150b462629ae6355a493d4475486fe6c4a3a621c68a08ae30f3ab9b729"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.109/reactor-cli_v1.20261021.109_linux-arm64.tar.gz"
      sha256 "1acf0fe564a671c47e1caa5376367dbaa58f1c97c6b5dcdb1f7c7b0d4ab143f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.109/reactor-cli_v1.20261021.109_linux-amd64.tar.gz"
      sha256 "a23cc32b204dc7d61372b6396bdfe3e2658a614109e24cd1ea6ac149772bc38e"
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
