# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.35"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.35/reactor-cli_v1.20261119.35_darwin-arm64.tar.gz"
      sha256 "494e6cd24104cdb9a01c64894df1cc63215d8bda71475af2fd4dbf10096c925c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.35/reactor-cli_v1.20261119.35_darwin-amd64.tar.gz"
      sha256 "68f99cf093b0d82ba6268e2786fcf960908face62813cfb2ae1db8fe86b46fc1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.35/reactor-cli_v1.20261119.35_linux-arm64.tar.gz"
      sha256 "b635071e2c965de9ed0ae772dfa55540aabb87d8b9f4c9b6a2aa83ba5e7672ea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.35/reactor-cli_v1.20261119.35_linux-amd64.tar.gz"
      sha256 "be9c2db2ed7b4d6fd5f9ce403ca1ff0fd606960c3d76d34eb7bd2150968de666"
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
