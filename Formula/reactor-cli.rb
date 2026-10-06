# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.376"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.376/reactor-cli_v1.20261005.376_darwin-arm64.tar.gz"
      sha256 "fad547459e1a376e3aebd8ce6e85ebc4aa4fa32041e6b0e1129d8ce42a943a35"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.376/reactor-cli_v1.20261005.376_darwin-amd64.tar.gz"
      sha256 "f5f4c914c66f4a96feeb50c2cae7edc34c6a237a28e4f2fb67a0f1ade2f7df6f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.376/reactor-cli_v1.20261005.376_linux-arm64.tar.gz"
      sha256 "aef51b4f7cae153fd1dcd14bf4578fbe5e734f8628c8e74faaeb71c4daf35158"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.376/reactor-cli_v1.20261005.376_linux-amd64.tar.gz"
      sha256 "0ec326a7f185b171409faa4fe2694a002fd71f41e26ee5312b29c79e3840858b"
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
