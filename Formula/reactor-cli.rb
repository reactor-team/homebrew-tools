# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260602.14850"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14850/reactor-cli_v1.20260602.14850_darwin-arm64.tar.gz"
      sha256 "081daa069c5014c20ace97658ddcb78ba29eb0cb3ef088ed363c4d7fe0cb1bfd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14850/reactor-cli_v1.20260602.14850_darwin-amd64.tar.gz"
      sha256 "ad63f53f3a013385628e34114b0be629c655f6b6bd33286796c025f5b7a1c789"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14850/reactor-cli_v1.20260602.14850_linux-arm64.tar.gz"
      sha256 "a55c2df88d31a36bdfcc3456ebd73eafb89c1db7cf6759c742be1e758c095bb2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14850/reactor-cli_v1.20260602.14850_linux-amd64.tar.gz"
      sha256 "c6d3b3d6d806076278d7bb380d967ee8806c4d2f5ffc9224a471aadff8b2bb80"
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
