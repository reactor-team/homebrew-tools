# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.17"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.17/reactor-cli_v1.20261125.17_darwin-arm64.tar.gz"
      sha256 "f04454cc6afc0f148c6f64cf0a5ef1eb7bb15b07869b6435817e61fffc9cfbe2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.17/reactor-cli_v1.20261125.17_darwin-amd64.tar.gz"
      sha256 "628f3d3b788288567680cf5d68a23463c06e0e62822eb3df923f55ad91931887"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.17/reactor-cli_v1.20261125.17_linux-arm64.tar.gz"
      sha256 "5246c7f90425ec6d93f92ff5e12a666fa86392ea794672db4075714b3301b3bb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.17/reactor-cli_v1.20261125.17_linux-amd64.tar.gz"
      sha256 "5199d2ad0f7ae12e1dcc91a4ba97e2915eaf301384720f5b2dae2084fa529835"
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
