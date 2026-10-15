# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.326"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.326/reactor-cli_v1.20261015.326_darwin-arm64.tar.gz"
      sha256 "1cf264b7b57374b83def86132e37146cd14d69de00d1db9ed07965cf6e1bcdd2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.326/reactor-cli_v1.20261015.326_darwin-amd64.tar.gz"
      sha256 "a58a9e74bdc86bd20fd6d7de9cdd4d22db1ef36ded13640be720b34b5871e801"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.326/reactor-cli_v1.20261015.326_linux-arm64.tar.gz"
      sha256 "9bf752f530a0de65673553e925793ea14ebdf532e26dd2b5e617ebdcd86b46c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.326/reactor-cli_v1.20261015.326_linux-amd64.tar.gz"
      sha256 "992e206a53aef72c0a90b649fb68ecd90607e32953958a4bce157711b7f4daf5"
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
