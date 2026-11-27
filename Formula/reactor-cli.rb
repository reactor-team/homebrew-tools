# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261127.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.2/reactor-cli_v1.20261127.2_darwin-arm64.tar.gz"
      sha256 "f48f34947faa30ee5d08924e409991e79d9cde0342c56b0df1cdb66699eea978"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.2/reactor-cli_v1.20261127.2_darwin-amd64.tar.gz"
      sha256 "c6670e7ea5ea225fbaf9def20824ceebc276084500381989618e47443297dee0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.2/reactor-cli_v1.20261127.2_linux-arm64.tar.gz"
      sha256 "276c48b89815448dc655483b9beb3d1985756db6a9482c71135cddd3820b6b73"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.2/reactor-cli_v1.20261127.2_linux-amd64.tar.gz"
      sha256 "11a2a84ed61d77297ac30802b03748c0b1f0f1053c9cb910e25c6544931cf48d"
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
