# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.52"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.52/reactor-cli_v1.20261118.52_darwin-arm64.tar.gz"
      sha256 "c704230c3f21e871c9267cd4da4e0cf093ba8d68f75df30d23844e98f7d1d608"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.52/reactor-cli_v1.20261118.52_darwin-amd64.tar.gz"
      sha256 "83c089f2f33eb0d74bbfe75bfd32793e46c8c59c05913cd56f4d9140e656ecec"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.52/reactor-cli_v1.20261118.52_linux-arm64.tar.gz"
      sha256 "94512ac98dc9495b40de1b65c93b3e4b7b8b40314d3718860bec4469068379bb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.52/reactor-cli_v1.20261118.52_linux-amd64.tar.gz"
      sha256 "c2e70d88de35f9f17b730139c51f519e6fe34619b440d0f0c9921d2241a94e3e"
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
