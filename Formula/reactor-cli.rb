# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261001.56"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.56/reactor-cli_v1.20261001.56_darwin-arm64.tar.gz"
      sha256 "83399bc69d0ea23794a6d0c0d368386775476b43e810366fe18407361a8358ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.56/reactor-cli_v1.20261001.56_darwin-amd64.tar.gz"
      sha256 "694e46631ff3648d47c19ad848db3f429535ecfa4df8f8a3c37e3747b7d04d94"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.56/reactor-cli_v1.20261001.56_linux-arm64.tar.gz"
      sha256 "ce888a777d08d83d6f0524f9797d16dce2691eea5983a49204881bd8b83ec865"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261001.56/reactor-cli_v1.20261001.56_linux-amd64.tar.gz"
      sha256 "27f4eed2f544f1550f54e52b904d1de8554503504b97ef0a6b61814b9d4dd4a8"
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
