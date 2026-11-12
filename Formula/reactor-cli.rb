# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.262"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.262/reactor-cli_v1.20261112.262_darwin-arm64.tar.gz"
      sha256 "70d7bd3d68162fc97e9192d5529ab05685fb3091a16aa45d0436a4ee71ccc66b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.262/reactor-cli_v1.20261112.262_darwin-amd64.tar.gz"
      sha256 "4c2a47297e96bc7e46ddf96c2e010136c59cbc93e813a9e3fa29ab8157ca5c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.262/reactor-cli_v1.20261112.262_linux-arm64.tar.gz"
      sha256 "b68fa3fdd4e1a21600cd5311701f6ab4c8e11801d808e4bd607306cabe053372"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.262/reactor-cli_v1.20261112.262_linux-amd64.tar.gz"
      sha256 "f840dc50e23f4742e07da9b35a51b9a7dbb3f5f0cc23a1bb73799c9f305b6abd"
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
