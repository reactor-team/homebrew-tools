# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.133"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.133/reactor-cli_v1.20261026.133_darwin-arm64.tar.gz"
      sha256 "1afb5f632d382ea30540ebcb2cfe6e1ebf11f5689c4dbfcbf360c59c88dff3c1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.133/reactor-cli_v1.20261026.133_darwin-amd64.tar.gz"
      sha256 "cfcf659782e1999ff39b2f9a81a4168fa3496014a8fa8c7d86a48ba6418302bc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.133/reactor-cli_v1.20261026.133_linux-arm64.tar.gz"
      sha256 "0f5fd34758fa97f6b5ecc8b21e412234b4287074ca455ffec4a31828e872495b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.133/reactor-cli_v1.20261026.133_linux-amd64.tar.gz"
      sha256 "9b0d23c68bb7c383b94c67dbd47921da6f80414289ff3482e3017aac6b0d9214"
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
