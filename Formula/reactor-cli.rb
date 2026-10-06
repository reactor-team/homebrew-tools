# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.261"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.261/reactor-cli_v1.20261006.261_darwin-arm64.tar.gz"
      sha256 "407ddae2cdcde07d78eb2c95456cd282b5e36409e720d6d2edb6fd13bedf52fe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.261/reactor-cli_v1.20261006.261_darwin-amd64.tar.gz"
      sha256 "5fd7a1b289ec00e5c9fb74ec41a07ab41e5d2737a3f027fda1b373f823f1283e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.261/reactor-cli_v1.20261006.261_linux-arm64.tar.gz"
      sha256 "dacc194d1867f481d448b3c76b514490d825020e34327827eb59a255814b820b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.261/reactor-cli_v1.20261006.261_linux-amd64.tar.gz"
      sha256 "d1267695f849b509b29f1bc32c471e70ae52a9e97aabdfc4a11aea1b4f4c73db"
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
