# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.16/reactor-cli_v1.20261110.16_darwin-arm64.tar.gz"
      sha256 "6289aab96353b53bd54986031a9382a83eee80a2622eb1d9f8a5f635492b9752"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.16/reactor-cli_v1.20261110.16_darwin-amd64.tar.gz"
      sha256 "1f808a40739c5180e4f3f2429a17197983d2f091318439234c2ed2c82a4fbaa3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.16/reactor-cli_v1.20261110.16_linux-arm64.tar.gz"
      sha256 "67b235eb7e1da7c9764bd83c3222303ea2b69e97d3ecf4b3586188caafc01c82"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.16/reactor-cli_v1.20261110.16_linux-amd64.tar.gz"
      sha256 "114e6c4eb17c321184f5e25a5a0d5f2b89002d28ae6d9fce7fd93b430436c1b4"
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
