# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261004.173"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.173/reactor-cli_v1.20261004.173_darwin-arm64.tar.gz"
      sha256 "bfa61fce5eb0f88b5ace0db9633724e5d23c2740098ea52f33212f7b20610732"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.173/reactor-cli_v1.20261004.173_darwin-amd64.tar.gz"
      sha256 "c9ccb30ebb479155889faf3dcd8c4bbdc4f5ce1b2e7da6b1c37db3842e8b8fdf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.173/reactor-cli_v1.20261004.173_linux-arm64.tar.gz"
      sha256 "f0ed79624b4494e113e0421bdeea9e7b4e332faa8ddec913b671a1b303a751ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.173/reactor-cli_v1.20261004.173_linux-amd64.tar.gz"
      sha256 "5ca3b8069ef352edde3d6d602662b276e9cbe33b70805d48128985526dcbb789"
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
