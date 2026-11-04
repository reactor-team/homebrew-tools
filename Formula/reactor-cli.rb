# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.152"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.152/reactor-cli_v1.20261104.152_darwin-arm64.tar.gz"
      sha256 "19eb1f5631d904ff9830aa20960b796ac8676b91f84aca166252210e9eef23eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.152/reactor-cli_v1.20261104.152_darwin-amd64.tar.gz"
      sha256 "4aa51ccdc569f4b22ba848eec4547879acf544c962d449bc95d2a7047197a436"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.152/reactor-cli_v1.20261104.152_linux-arm64.tar.gz"
      sha256 "1857f513393d51926066c4cd54a8a93575fb551940a74a878924c32a415b8eb1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.152/reactor-cli_v1.20261104.152_linux-amd64.tar.gz"
      sha256 "7c277349e657bb9f8fce4643fa9bd9146c73945bda60d3c9e315fba7dc4d967d"
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
