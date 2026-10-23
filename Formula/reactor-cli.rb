# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.92"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.92/reactor-cli_v1.20261023.92_darwin-arm64.tar.gz"
      sha256 "96af696c1cfb9b659539776ab58a77a286d3b601d8336d7039c39d08b66316fc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.92/reactor-cli_v1.20261023.92_darwin-amd64.tar.gz"
      sha256 "c63f0af624e55491c0f9b52867e943e5194c4da669b6e005740ccdee665690d2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.92/reactor-cli_v1.20261023.92_linux-arm64.tar.gz"
      sha256 "6ca1e1dd6624eca16b63fc5d187680d56ec7fff53c7690b1e844719f7618f702"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.92/reactor-cli_v1.20261023.92_linux-amd64.tar.gz"
      sha256 "1f6de8730b4e1a30bd8f99edca3c5a861e38f064dc33a00db18ca3c55b6ed1d9"
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
