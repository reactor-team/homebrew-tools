# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.27325"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27325/reactor-cli_v1.20260916.27325_darwin-arm64.tar.gz"
      sha256 "f73a9478f0a4b5d868688038ca70795c1f23381954c866c11337bbe5410fee22"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27325/reactor-cli_v1.20260916.27325_darwin-amd64.tar.gz"
      sha256 "e1339131748ddee9eaf10ab36c183f6bfe01cd0ea18de8b6aabc14428308dd0c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27325/reactor-cli_v1.20260916.27325_linux-arm64.tar.gz"
      sha256 "0b0e72b4bb7d98fbdb1b4104c4b107742dc228c7f35c5a8180226f63d79a0132"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27325/reactor-cli_v1.20260916.27325_linux-amd64.tar.gz"
      sha256 "5579cc220611496d48facde3270116a2106a83b20ce154bca1afbdfae574e9d2"
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
