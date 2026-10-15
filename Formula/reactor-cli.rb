# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.167"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.167/reactor-cli_v1.20261015.167_darwin-arm64.tar.gz"
      sha256 "844a7fcd930930d03fd4ba6ca08b9fee95f4bcff8cd654635b757a0d04d99060"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.167/reactor-cli_v1.20261015.167_darwin-amd64.tar.gz"
      sha256 "43451d9c12e71fcdf30a23d99a3e40ddd439a8029508faf62f92b92e8e09805d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.167/reactor-cli_v1.20261015.167_linux-arm64.tar.gz"
      sha256 "15def3977cb4179769becdae8f32ef4979316f53d4a14d52be4803cd78d1c653"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.167/reactor-cli_v1.20261015.167_linux-amd64.tar.gz"
      sha256 "0d0850066f866745c10c35e2bce19774fb4d503eac8fb1cab6df4f8a50c00fc7"
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
