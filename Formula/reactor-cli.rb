# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260512.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.10/reactor-cli_v1.20260512.10_darwin-arm64.tar.gz"
      sha256 "d292be3a3fafa753c8cf224a331d35c603e386df6e6a93c7ed75a25ff7b0854f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.10/reactor-cli_v1.20260512.10_darwin-amd64.tar.gz"
      sha256 "7905dbfd9f45c56328ec1a074259c3dd6b970f52a4138f9a9dbf2deee971fe3d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.10/reactor-cli_v1.20260512.10_linux-arm64.tar.gz"
      sha256 "1d2428c25104da7d28078121e444c8a896b06be8951248cee9cb2fc40fec04c6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260512.10/reactor-cli_v1.20260512.10_linux-amd64.tar.gz"
      sha256 "311156cb79efbca3c7826978b6a65829aef14cf40425a538ff247635d99bebc7"
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
