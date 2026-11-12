# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.618"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.618/reactor-cli_v1.20261112.618_darwin-arm64.tar.gz"
      sha256 "cbe10872a31a32a815bcd89718a4b155c8ebaa2059e23b575adadf356379e478"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.618/reactor-cli_v1.20261112.618_darwin-amd64.tar.gz"
      sha256 "07a445bb975b6a35c81952f95e95f247fb01f7a2bc18493e67588745d313c216"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.618/reactor-cli_v1.20261112.618_linux-arm64.tar.gz"
      sha256 "193fbf66ef55475a7f56a299b21b73bece885d733285b8974f060aa6eeab2e3c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.618/reactor-cli_v1.20261112.618_linux-amd64.tar.gz"
      sha256 "9c3c94cfcea8e77a3da956e13006a835c16a8beaa5cd4a9413eec0bece56df69"
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
