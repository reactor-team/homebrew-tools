# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.20"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.20/reactor-cli_v1.20261118.20_darwin-arm64.tar.gz"
      sha256 "07b8f3111f496efde27db1da9019d5a0bb35e51deb048cb45988ff9cb33301ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.20/reactor-cli_v1.20261118.20_darwin-amd64.tar.gz"
      sha256 "42f9ac1025e204b187d31050bf7d30a4d3b94090de55e3a16ff5c84016774ab2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.20/reactor-cli_v1.20261118.20_linux-arm64.tar.gz"
      sha256 "856e53cb8c4bde640bac6737f6f88e0b9a1021e91a0d726f44ab785def160162"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.20/reactor-cli_v1.20261118.20_linux-amd64.tar.gz"
      sha256 "abfdc4734b21d83ae74d54c24de2e432477e808ea7757d8239fcefdf16f037f6"
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
