# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.281"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.281/reactor-cli_v1.20261020.281_darwin-arm64.tar.gz"
      sha256 "0fba82dba8a147370eec869c76af71c3d035e501e39ed98bbde86c092da23121"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.281/reactor-cli_v1.20261020.281_darwin-amd64.tar.gz"
      sha256 "bfcfda18f207eec06f0ec059518ccd7fac6bcc8e198d4c5d7859808a0c57dcff"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.281/reactor-cli_v1.20261020.281_linux-arm64.tar.gz"
      sha256 "e10c9fc3ea4a40f70c54d536047615ae6032a6898a1ccd21929a7756b7600747"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.281/reactor-cli_v1.20261020.281_linux-amd64.tar.gz"
      sha256 "2c3db1ed48d1de02e6f7bc6f92069f80567151fe18cd9601d0fb383331ccd67c"
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
