# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260703.17323"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17323/reactor-cli_v1.20260703.17323_darwin-arm64.tar.gz"
      sha256 "26d6d487e1087984903dd6e9d178836c92a97ff7b7c46465eaae77e79fde4602"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17323/reactor-cli_v1.20260703.17323_darwin-amd64.tar.gz"
      sha256 "2678191952f07fcdc6880f5c7429665d010a334de24f2e23efae6ae7cf5598a5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17323/reactor-cli_v1.20260703.17323_linux-arm64.tar.gz"
      sha256 "ed03a651246b3d1272abd362007930cf8628e3bbf91b820cd1903d292e6cfbda"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260703.17323/reactor-cli_v1.20260703.17323_linux-amd64.tar.gz"
      sha256 "aa266d67956061b25edabbe7ac96d6278e74e462d88239624d097afeae0d9211"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
