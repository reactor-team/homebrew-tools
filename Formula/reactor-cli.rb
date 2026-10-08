# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.91"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.91/reactor-cli_v1.20261008.91_darwin-arm64.tar.gz"
      sha256 "0df58b277f23f8d6ea47651860641d8e382d1ac9b87c76340a9843f92f965b41"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.91/reactor-cli_v1.20261008.91_darwin-amd64.tar.gz"
      sha256 "f0f756fedf07dd010f2e8de778806d7ab85a3fff613d24c78da30dee8dbccfce"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.91/reactor-cli_v1.20261008.91_linux-arm64.tar.gz"
      sha256 "0fee2d1b6929774bf112aa55a263b37f513054b88c0a6b3c1a0957cf50db69c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.91/reactor-cli_v1.20261008.91_linux-amd64.tar.gz"
      sha256 "0888677eeab538ab66ea834918ae7cb915a2b66f37eed206815cbf5499c9a827"
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
