# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260822.22808"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22808/reactor-cli_v1.20260822.22808_darwin-arm64.tar.gz"
      sha256 "907c75ec386573d3978c660ff59218fa8e757e9dd0e99df16911626207357193"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22808/reactor-cli_v1.20260822.22808_darwin-amd64.tar.gz"
      sha256 "4adebeb62291b637fcbf4d7b20ae924d79fd16d23bc8ba10ae4d68d5b029c829"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22808/reactor-cli_v1.20260822.22808_linux-arm64.tar.gz"
      sha256 "76c75ed5ab04f0b2e910b65c160712d73265972b2c4dcca914a2b1f51bfeabf7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22808/reactor-cli_v1.20260822.22808_linux-amd64.tar.gz"
      sha256 "14753ad8e17b91d607d6e93e2ee9e2022519d9b3b1e4d7c522f5b15a516fabbb"
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
