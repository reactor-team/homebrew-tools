# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.1/reactor-cli_v1.20261123.1_darwin-arm64.tar.gz"
      sha256 "1cb46337c076b125c01546da06efeb5054ca1527a1f3d52a3813a8a3a341b916"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.1/reactor-cli_v1.20261123.1_darwin-amd64.tar.gz"
      sha256 "2a46e517214cafc634273f17ff2ca180d8d2b3edb6c61a85e3e639aa4e615b1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.1/reactor-cli_v1.20261123.1_linux-arm64.tar.gz"
      sha256 "f64c57f3230c57f9a42e58728559429fe7d4cb8ad62a4a718cd743ba1e006fdd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.1/reactor-cli_v1.20261123.1_linux-amd64.tar.gz"
      sha256 "a4e372df59e84724576a9b00c280e13b2f74954503d121d0a5bd5ae8c377673c"
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
