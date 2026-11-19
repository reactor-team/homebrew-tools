# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.23"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.23/reactor-cli_v1.20261119.23_darwin-arm64.tar.gz"
      sha256 "fecf1d42609e8af35d02c86db03e3a0f71cf00e835dfff3208c4065346b6fd9d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.23/reactor-cli_v1.20261119.23_darwin-amd64.tar.gz"
      sha256 "90a9aeb2dbcbe16e4148bd7204ddcf3f5fe4a698ce17c31df1b2fb4ded3406cd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.23/reactor-cli_v1.20261119.23_linux-arm64.tar.gz"
      sha256 "5743acd74778249bb264c5fc88fce9548df8ac70222c42815dc26f3cb4025261"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.23/reactor-cli_v1.20261119.23_linux-amd64.tar.gz"
      sha256 "59c2cbbf03d8ce271c84854fa40842c48b82c528612f21446a7bfaf3a80c4fca"
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
