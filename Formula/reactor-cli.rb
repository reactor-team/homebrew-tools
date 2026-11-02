# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.114"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.114/reactor-cli_v1.20261102.114_darwin-arm64.tar.gz"
      sha256 "baf0b25e9e0d79975ca267dca2ec749f0b0d20bc0e2aee69bf747a3c6c16d294"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.114/reactor-cli_v1.20261102.114_darwin-amd64.tar.gz"
      sha256 "3ea9ceb259d0ce831cfa00a4c7afa0447a06ba12ff8baad5f4443479bd9a3d6b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.114/reactor-cli_v1.20261102.114_linux-arm64.tar.gz"
      sha256 "40db99bed689d72a3aa65b8bd494d0d23ef220d9bd7895a2917d1e37bef58d29"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.114/reactor-cli_v1.20261102.114_linux-amd64.tar.gz"
      sha256 "eef3aee0124ed50702adb70249f470e7b47b79c0cee737883326f965b7c284be"
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
