# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261001.53"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.53/reactor-cli_v1.20261001.53_darwin-arm64.tar.gz"
      sha256 "5c9ea849a8cfe240c40b29063d9f5e1e0a8c6e55c5acfd79a92f786180aa2b07"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.53/reactor-cli_v1.20261001.53_darwin-amd64.tar.gz"
      sha256 "437bdff28d2e1247a3a6780a0b25559f65e3de21e37eaadd869457108567e139"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.53/reactor-cli_v1.20261001.53_linux-arm64.tar.gz"
      sha256 "51dede355e7db717565783804eb2bad5a55ba5934fad77834ab9cda4acaca050"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.53/reactor-cli_v1.20261001.53_linux-amd64.tar.gz"
      sha256 "72359634d5d3c7a3088d74d639be612078fd3109e5b978d1d8f4ea1767c820d7"
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
