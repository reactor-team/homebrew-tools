# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.34"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.34/reactor-cli_v1.20261123.34_darwin-arm64.tar.gz"
      sha256 "bf7e54369bfa7871eff74db5f3fba77af7c592d5c95240545fce2fd281363155"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.34/reactor-cli_v1.20261123.34_darwin-amd64.tar.gz"
      sha256 "8736fc35870db1b470cb6af5de469f87f27d644259ef1ae737ff7fa953d24a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.34/reactor-cli_v1.20261123.34_linux-arm64.tar.gz"
      sha256 "01bd2cd553e09eead6fd1f3db88dd468c5b3064f4d9669921aa3656418ec804f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.34/reactor-cli_v1.20261123.34_linux-amd64.tar.gz"
      sha256 "1e4d43f3917276637991cef93bf3d93e4d32ea14377d7e3733283d83e730eca0"
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
