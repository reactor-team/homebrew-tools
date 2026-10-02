# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.54"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.54/reactor-cli_v1.20261002.54_darwin-arm64.tar.gz"
      sha256 "a65e32bdd8f8e7f3a3a3c9e0bf3b6df6d7b086b62dca5682c8a2ee7e6ba5ea30"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.54/reactor-cli_v1.20261002.54_darwin-amd64.tar.gz"
      sha256 "fa9a36b10e52da1b8afef8c183d137c14143d7dd934157fb18d6a299bdb6a91a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.54/reactor-cli_v1.20261002.54_linux-arm64.tar.gz"
      sha256 "b0f87a11d6f1cd381e8d331878a7254a6b035580a45b22553e55832a4ee86681"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.54/reactor-cli_v1.20261002.54_linux-amd64.tar.gz"
      sha256 "89e9abbce45bec9747941608ab76c1143702e6a85a37a47084e7af1152771ccf"
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
