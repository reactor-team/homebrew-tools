# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.62"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.62/reactor-cli_v1.20261021.62_darwin-arm64.tar.gz"
      sha256 "8e99203de0973bd35043b522851bf5495e745d0aaa824585a38c69e7f1b0697f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.62/reactor-cli_v1.20261021.62_darwin-amd64.tar.gz"
      sha256 "a9a4020ff708828669987a325ace050a09f26b231194975bead2ada358513fa8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.62/reactor-cli_v1.20261021.62_linux-arm64.tar.gz"
      sha256 "520bcb5afb2f374ee1c5629f25d32d6f4c24f50690d1123855baaf1b9867b81f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.62/reactor-cli_v1.20261021.62_linux-amd64.tar.gz"
      sha256 "ca72314330bc6eb6188dbc8c91ea5b69810dc2b38cfa81d806c85aab25ecbb3e"
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
