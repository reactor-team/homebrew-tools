# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.53"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.53/reactor-cli_v1.20261023.53_darwin-arm64.tar.gz"
      sha256 "6414846fbfc2fc908e8fc6e83bb0e42073cb54553f27d3e7479a54711836f8aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.53/reactor-cli_v1.20261023.53_darwin-amd64.tar.gz"
      sha256 "55a9721fb905c9b3a212c6323436174c85968f4aa78efa601a2618e8a2a3e458"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.53/reactor-cli_v1.20261023.53_linux-arm64.tar.gz"
      sha256 "9df1a11a7d7dc10dba451de338569e7dae0fd7a47c6e764af661267216442ee9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.53/reactor-cli_v1.20261023.53_linux-amd64.tar.gz"
      sha256 "2578518c59169da1bc110847483f2a3ff216f3984a63ea6233dc7c4a230d60ac"
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
