# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.109"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.109/reactor-cli_v1.20261023.109_darwin-arm64.tar.gz"
      sha256 "02b2ae83271c84873ae9991a3ac5c625a94540c8c79176428646874d3134d408"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.109/reactor-cli_v1.20261023.109_darwin-amd64.tar.gz"
      sha256 "b6835bfcba4575c31621061690b50981ba577b0f38592197aa23a7c3f6b55a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.109/reactor-cli_v1.20261023.109_linux-arm64.tar.gz"
      sha256 "13def5dc88b587ce08c9f38449218869961ef2b1812b6c533b2bb381e9f007f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.109/reactor-cli_v1.20261023.109_linux-amd64.tar.gz"
      sha256 "5d0f59fed482aaa3784c4879c746f5dc96d1b41a02856a80a8bd3a58909a5882"
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
