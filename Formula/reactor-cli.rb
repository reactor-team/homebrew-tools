# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.15/reactor-cli_v1.20261113.15_darwin-arm64.tar.gz"
      sha256 "73f2bc464f6b40a411d1f19f6753e2ad48258fac8d4dfc9cd75221c77d62f750"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.15/reactor-cli_v1.20261113.15_darwin-amd64.tar.gz"
      sha256 "6d847bab7b8d74fa102c6e552bbd8528a7aef75572873a946be6497a76ca6578"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.15/reactor-cli_v1.20261113.15_linux-arm64.tar.gz"
      sha256 "78514a5991d093a4e3da637f166f0ae01528386a0688c1141f627907ec4e7c22"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.15/reactor-cli_v1.20261113.15_linux-amd64.tar.gz"
      sha256 "2c27aaab8428c2df6f1adc8c5d63d7f722d354b72088a23a8a044e8db3748f77"
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
