# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.92"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.92/reactor-cli_v1.20261105.92_darwin-arm64.tar.gz"
      sha256 "b07a9cb4026327590e9962dace595645e5fda60d6aac3d14ab859e4856c60d2b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.92/reactor-cli_v1.20261105.92_darwin-amd64.tar.gz"
      sha256 "ab39a4a68bd4065c87dec910154ff8f06d83af237c5a0ef682a91809c280b63c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.92/reactor-cli_v1.20261105.92_linux-arm64.tar.gz"
      sha256 "8ad0a88c99a46b5ea3a2a3b2705443bf7d5cb51af5c46f7ec3e715f0ecd03c25"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.92/reactor-cli_v1.20261105.92_linux-amd64.tar.gz"
      sha256 "66e1987940835bdedf469547904854d9138a2b1f60347318d9862617f1ad4376"
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
