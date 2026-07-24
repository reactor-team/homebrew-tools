# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19174"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19174/reactor-cli_v1.20260724.19174_darwin-arm64.tar.gz"
      sha256 "c26996879fd8bd0a1a86797cdd5075a8a61fe2396014b8f885198eeb2c2c305c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19174/reactor-cli_v1.20260724.19174_darwin-amd64.tar.gz"
      sha256 "d7b7aef04380b897c2c7464979650cb458be6a265b24651e93b4ff9b569d8674"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19174/reactor-cli_v1.20260724.19174_linux-arm64.tar.gz"
      sha256 "2516a45df8c98bb5a80b93fe29138d763af6140fc29cee8fb1f1d080765ec431"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19174/reactor-cli_v1.20260724.19174_linux-amd64.tar.gz"
      sha256 "e987e4ff29b96ffa2634b36ff9f80c0441952adaf36091a98bd11dc34b058071"
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
