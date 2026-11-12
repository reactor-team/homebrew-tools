# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.471"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.471/reactor-cli_v1.20261112.471_darwin-arm64.tar.gz"
      sha256 "938bece830ab387dc2b9057ad76efb1835c03be009067c8d52bddb0c89b30cde"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.471/reactor-cli_v1.20261112.471_darwin-amd64.tar.gz"
      sha256 "efec868749581c7963d43f1e8b9eb677549d58c511661748544f3581a0de860b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.471/reactor-cli_v1.20261112.471_linux-arm64.tar.gz"
      sha256 "d7068f6bf13e00862a59d62f7cca44ad76c43d40e59a3165b9fe7fe5809c5650"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.471/reactor-cli_v1.20261112.471_linux-amd64.tar.gz"
      sha256 "f90da3997ee506a537612ab855987600638edade98a0891dcefe3461a4dfbec1"
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
