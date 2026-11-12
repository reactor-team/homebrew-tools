# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.260"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.260/reactor-cli_v1.20261112.260_darwin-arm64.tar.gz"
      sha256 "164e3ff95f5808596baa562464d26914c0a88f810cfe19d55b091a2805d92c0d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.260/reactor-cli_v1.20261112.260_darwin-amd64.tar.gz"
      sha256 "f935d52c71a4cfca69a18bbebd57c6251b3cceb2cd5c57f0d609c6d87c152398"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.260/reactor-cli_v1.20261112.260_linux-arm64.tar.gz"
      sha256 "95a6c6b5d326594e0b01f3d02978ea6710c3f30f43e7cc26cc335a6c02dbbcf2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.260/reactor-cli_v1.20261112.260_linux-amd64.tar.gz"
      sha256 "e763c119836784b497ca88be600e229b548c1721828fadd0e16bbf97b73389e4"
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
