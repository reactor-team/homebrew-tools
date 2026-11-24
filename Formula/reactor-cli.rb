# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.37"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.37/reactor-cli_v1.20261123.37_darwin-arm64.tar.gz"
      sha256 "6efe9c96d4630e50cae21c86a1f8a767df6162be2daa585c421fd1d67ff6a1e6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.37/reactor-cli_v1.20261123.37_darwin-amd64.tar.gz"
      sha256 "22ac35ec99dee89322b15b22dbf56e9646d138df760fd9d24a631f7277450e29"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.37/reactor-cli_v1.20261123.37_linux-arm64.tar.gz"
      sha256 "cd571018d39b4aaad22f9ecb12bef2f2446a0438f9d6c4c6449cc15144c941f8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.37/reactor-cli_v1.20261123.37_linux-amd64.tar.gz"
      sha256 "d17221688a0cd7fcf2bcfce7e7284fd22d3e1f59c080e5f4a1685daae338ba56"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
