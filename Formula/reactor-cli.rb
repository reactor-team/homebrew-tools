# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.4/reactor-cli_v1.20261123.4_darwin-arm64.tar.gz"
      sha256 "d267ebba1b7428360abeb766b8fbdaaf077544a2e490632605274a20a2f7c984"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.4/reactor-cli_v1.20261123.4_darwin-amd64.tar.gz"
      sha256 "1ca205ab0ec0711a15c15e00f1ce44396c16a360ba52c5f37cbea010369cdf26"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.4/reactor-cli_v1.20261123.4_linux-arm64.tar.gz"
      sha256 "afbebcae37dab002a1a7932f64d3bce63f9e5f6afb559f8ce6ea84fefebb7c66"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.4/reactor-cli_v1.20261123.4_linux-amd64.tar.gz"
      sha256 "ead7adc68970b40ccf6471d0f1a8302f500135485d26105ac5c5c703eb33944f"
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
