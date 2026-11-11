# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.397"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.397/reactor-cli_v1.20261111.397_darwin-arm64.tar.gz"
      sha256 "b33bf1cbbfcf339d067e9fe266ab4e8bff38ca1afb5bf9ce57d2d8f7b406268f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.397/reactor-cli_v1.20261111.397_darwin-amd64.tar.gz"
      sha256 "f22d95540b03a326e469bb318679566467b1c5414d5bab23a7de5c7bc3878461"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.397/reactor-cli_v1.20261111.397_linux-arm64.tar.gz"
      sha256 "4492b72c729c233d5df89406be22bdfad267d6250a945bc915998f026601a3f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.397/reactor-cli_v1.20261111.397_linux-amd64.tar.gz"
      sha256 "3854ab228a33ac20ae11f62b2a463307b0b5763f7884801c396e5a99bb2397fe"
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
