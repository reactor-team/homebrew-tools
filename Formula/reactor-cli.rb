# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.278"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.278/reactor-cli_v1.20261013.278_darwin-arm64.tar.gz"
      sha256 "1198ac7968e4680b4589dd2a8910193eccb0ec148140b57a2bee658578bcf40f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.278/reactor-cli_v1.20261013.278_darwin-amd64.tar.gz"
      sha256 "c8c6dc6b0818e347d99fdec500d07698e07dfd9cf524b9f83e981458fa7f8af0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.278/reactor-cli_v1.20261013.278_linux-arm64.tar.gz"
      sha256 "5a3cb2e9813211858bca59866133d15369264ca5ebffdc36b6b1eb8a8e34df18"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.278/reactor-cli_v1.20261013.278_linux-amd64.tar.gz"
      sha256 "69d77b07ebbf9b97ac026432aeb65cc6ebe9f4d57cb94faac299646be64ed891"
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
