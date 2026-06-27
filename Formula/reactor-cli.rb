# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16887"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16887/reactor-cli_v1.20260627.16887_darwin-arm64.tar.gz"
      sha256 "8818f140982f9fd82b8eb84f518b50b6abec8a07b6ca6dc9771d954d7b4df440"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16887/reactor-cli_v1.20260627.16887_darwin-amd64.tar.gz"
      sha256 "36268fc6493a02a3c772ef58c5aa5a78863f34412e917e3b3e25e62ef5153b81"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16887/reactor-cli_v1.20260627.16887_linux-arm64.tar.gz"
      sha256 "19feef04ceb07f4bccf2263016ce4008dbc4d88e50401bb4894a025167f5bce5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16887/reactor-cli_v1.20260627.16887_linux-amd64.tar.gz"
      sha256 "9b254ff84e072fae3f0b717f3636b3c5121e9e89a8fc18e2f2cce82a93616b4c"
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
