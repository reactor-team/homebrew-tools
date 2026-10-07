# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261007.144"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.144/reactor-cli_v1.20261007.144_darwin-arm64.tar.gz"
      sha256 "20df6ec063a7e63d7ce57a9140d969dceacece36134f63f3b1fd25930d565965"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.144/reactor-cli_v1.20261007.144_darwin-amd64.tar.gz"
      sha256 "3f3fe2f560feaeb52f79eb53509208374aac6b1975d545e16fafd5eac0605023"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.144/reactor-cli_v1.20261007.144_linux-arm64.tar.gz"
      sha256 "b6f029c6fb70a7e26ee4ae07a1b0a8cf2641a405f47e2aadecd173abf898188c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.144/reactor-cli_v1.20261007.144_linux-amd64.tar.gz"
      sha256 "72413cf323dc155afde45a20148a8490fad4ea4b75e10d4b6b31be86cec13563"
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
