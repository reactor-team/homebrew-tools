# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260818.22280"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22280/reactor-cli_v1.20260818.22280_darwin-arm64.tar.gz"
      sha256 "9e686e2e82f4d1d1f1e5eff0c9a5c7f85a0d5a05970a6899e06a82f7f5ce75eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22280/reactor-cli_v1.20260818.22280_darwin-amd64.tar.gz"
      sha256 "ccde03113b8a75954d9d094128527564f0367a54034a30263e6814fe1fd3c8c4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22280/reactor-cli_v1.20260818.22280_linux-arm64.tar.gz"
      sha256 "e1c84ffc28b58528b7722c739337559fbfad760e34bc28798d28623ed6783b81"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22280/reactor-cli_v1.20260818.22280_linux-amd64.tar.gz"
      sha256 "5d50b1a2bfb871c59d56e49504a5abad3215e5935b550dff5d4d8d2e1540474e"
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
