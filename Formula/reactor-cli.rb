# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260913.26261"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26261/reactor-cli_v1.20260913.26261_darwin-arm64.tar.gz"
      sha256 "46a9e963bf5ebb780255220446536b60553c3e928b7d229349a99b3267ff0e4c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26261/reactor-cli_v1.20260913.26261_darwin-amd64.tar.gz"
      sha256 "157b2e98e83f9f245dc144cb7951886a273bf1a7c1cac5906456d828284b577e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26261/reactor-cli_v1.20260913.26261_linux-arm64.tar.gz"
      sha256 "04e6315a19f792bfe994f77b08202635570d8615590591e0ac493d3ce09346d7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26261/reactor-cli_v1.20260913.26261_linux-amd64.tar.gz"
      sha256 "b1d289b39c12d432d91eaf0d01dbb2e52c26beb8079c219b9a695b194c650d2e"
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
