# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.46"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.46/reactor-cli_v1.20260929.46_darwin-arm64.tar.gz"
      sha256 "616946d688d1c8109ebd4f919714d3979e64e0c0fcfa985c079c094359a495ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.46/reactor-cli_v1.20260929.46_darwin-amd64.tar.gz"
      sha256 "144d62561663e41196287ee37fedb928f6ee69d79a0155fa564368813261a5e3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.46/reactor-cli_v1.20260929.46_linux-arm64.tar.gz"
      sha256 "73acc39f0c28d99d9cd961fbd3afd252118d347f7869bd05395f955f2f44b390"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.46/reactor-cli_v1.20260929.46_linux-amd64.tar.gz"
      sha256 "95bb7a4a197bfe15a268a1350ed36ba0648bce2b1cd3c30c998d09ef4a592179"
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
