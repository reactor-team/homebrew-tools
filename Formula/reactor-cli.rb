# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.172"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.172/reactor-cli_v1.20261005.172_darwin-arm64.tar.gz"
      sha256 "a35ebe87efa010018074304b7baab28a15a48e916ca877e860c85adf595db6b6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.172/reactor-cli_v1.20261005.172_darwin-amd64.tar.gz"
      sha256 "43da218d85b628d144bb056ed9bbe64318f70ac61ac65bf7777fb9733322f8fb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.172/reactor-cli_v1.20261005.172_linux-arm64.tar.gz"
      sha256 "a8d958438d80588a8b609cd5ba666bf1df2ec599a36b3d81e189bdb6b3d1dcd6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.172/reactor-cli_v1.20261005.172_linux-amd64.tar.gz"
      sha256 "36c08ca472224c0ae3ea3fe01d91a9cf73d3c1f27f2514820644f82015a3c83b"
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
