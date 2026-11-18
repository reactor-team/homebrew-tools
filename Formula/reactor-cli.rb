# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.11/reactor-cli_v1.20261118.11_darwin-arm64.tar.gz"
      sha256 "ba3a57a606ca8123195707348eb7880f64db3679df9c86189c9816f58976c23d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.11/reactor-cli_v1.20261118.11_darwin-amd64.tar.gz"
      sha256 "5f98910803054c9886c3f8773d1b4bc65388b0d15b5c90ceeaea60bc24e6ae86"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.11/reactor-cli_v1.20261118.11_linux-arm64.tar.gz"
      sha256 "5abc938f881fe4a796efa29396bc08014fc7a560d2c8ddd3a0e2b8235999bed3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.11/reactor-cli_v1.20261118.11_linux-amd64.tar.gz"
      sha256 "7429d3b80e779560a1719097a83c0176284581dcfaf9a1a2a0eabc36c2bb7595"
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
