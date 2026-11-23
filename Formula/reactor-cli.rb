# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.10/reactor-cli_v1.20261123.10_darwin-arm64.tar.gz"
      sha256 "3621ab854a0f3f08e941130d16fa1ffe82483b4460d4d9574b93fdd4c9eb13d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.10/reactor-cli_v1.20261123.10_darwin-amd64.tar.gz"
      sha256 "86cdf65532cd0d0cfa030b7e6f13892dccf7ead016cdaa1e7dd231b908642f58"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.10/reactor-cli_v1.20261123.10_linux-arm64.tar.gz"
      sha256 "23e48d0675e6e1e43c2ebde60c0aeccff186070627bd9dc5554da5a7527411a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.10/reactor-cli_v1.20261123.10_linux-amd64.tar.gz"
      sha256 "c42d47cd2d1073f44bce2835372986e7d42d41608d3802d1d2c0cd0521026352"
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
