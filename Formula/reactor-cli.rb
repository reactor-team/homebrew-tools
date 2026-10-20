# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.297"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.297/reactor-cli_v1.20261020.297_darwin-arm64.tar.gz"
      sha256 "8cd907d051af384e165d3fe67f64cfa2615b667fa2975348021f3ac2d7961a04"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.297/reactor-cli_v1.20261020.297_darwin-amd64.tar.gz"
      sha256 "72100d3a827481331511fc5220c6fe45bc47466faf6ec701ca98852165c4527f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.297/reactor-cli_v1.20261020.297_linux-arm64.tar.gz"
      sha256 "a4e83b6300da42f1b97b6f2864d6742bafcaee5edc7622d1ecacc54aa017817c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.297/reactor-cli_v1.20261020.297_linux-amd64.tar.gz"
      sha256 "82379151e183ae74078a1fbbbeacb1e889b6b2016f7c20073a29a31b13380ba8"
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
