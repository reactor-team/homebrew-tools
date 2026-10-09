# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.102"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.102/reactor-cli_v1.20261009.102_darwin-arm64.tar.gz"
      sha256 "d71639e066b04777db49569ae3e8d9ea6495471f3345b5438acce6dae99bfb09"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.102/reactor-cli_v1.20261009.102_darwin-amd64.tar.gz"
      sha256 "c45fc08e57e59312d853ccdb0e79c149e71ede980bf0519c8ecd6dd1a225447c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.102/reactor-cli_v1.20261009.102_linux-arm64.tar.gz"
      sha256 "8fb7c61206785658aa1892126da4202075803c5faa824326428c5978a6cacea2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.102/reactor-cli_v1.20261009.102_linux-amd64.tar.gz"
      sha256 "0b5df737302029b909e3a028659289bd581f3508d47e030fe86f29890f90fb7e"
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
