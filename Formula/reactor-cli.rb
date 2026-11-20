# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.11/reactor-cli_v1.20261120.11_darwin-arm64.tar.gz"
      sha256 "b587621c29339a19b6fba4a640b5466a5148c289a98682aa9dd81df05194634b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.11/reactor-cli_v1.20261120.11_darwin-amd64.tar.gz"
      sha256 "5c1ab392f8e62819c93c24ab1a066c45fab212aae974593dd4fcd8364aa857a0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.11/reactor-cli_v1.20261120.11_linux-arm64.tar.gz"
      sha256 "d67c19557f49b1593dab6b55cc9b088a218f0226321676eb25f60d1209d4b241"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.11/reactor-cli_v1.20261120.11_linux-amd64.tar.gz"
      sha256 "62264cbbc4715de6a402d59e99cfb16ff47121e7c8aafff84b5d728d9c672a30"
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
