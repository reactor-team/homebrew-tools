# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.36"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.36/reactor-cli_v1.20261123.36_darwin-arm64.tar.gz"
      sha256 "01cee59208b3a5117245874a1a69ebaf12bd3c5c8b4b46fc50ca800a7044cf68"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.36/reactor-cli_v1.20261123.36_darwin-amd64.tar.gz"
      sha256 "6060bc56f6c1903d9efda45ac7b73aeed0cfee580d71595458c24ef8487b43e6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.36/reactor-cli_v1.20261123.36_linux-arm64.tar.gz"
      sha256 "36edce5be049d76872ca299d1788e8317ee5eb3dbe75f3d0565a89c40dfbd7e4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.36/reactor-cli_v1.20261123.36_linux-amd64.tar.gz"
      sha256 "89ac067bcf8ec46579bf9bc5bc706d5a8f95e851db91bd68c8de941b90da9b28"
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
