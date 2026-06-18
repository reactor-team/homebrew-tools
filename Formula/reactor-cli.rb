# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260618.16251"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260618.16251/reactor-cli_v1.20260618.16251_darwin-arm64.tar.gz"
      sha256 "ea4355373b6356414639df553a0946e200d61ed3a3e920c110a7f36a487b5c8c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260618.16251/reactor-cli_v1.20260618.16251_darwin-amd64.tar.gz"
      sha256 "542a06e33da926405fdd0bad814e41e1e0cdaf71fcb9654b7d57159b0c5134bf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260618.16251/reactor-cli_v1.20260618.16251_linux-arm64.tar.gz"
      sha256 "78f1a4b3312b77c2060e48bbfe46e8b55ace78776712de0af9c983abb97b92c1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260618.16251/reactor-cli_v1.20260618.16251_linux-amd64.tar.gz"
      sha256 "6e2242c580e31fc64d3b4ad2988ce2922594a7c519dca31c19e4a838b8daf83f"
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
