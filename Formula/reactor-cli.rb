# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261004.175"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.175/reactor-cli_v1.20261004.175_darwin-arm64.tar.gz"
      sha256 "45ff17170a5bef77948250a30fe52062c66afab12d8275330fbe4c9222fbb88d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.175/reactor-cli_v1.20261004.175_darwin-amd64.tar.gz"
      sha256 "eb3474395b6a8d0c6c8b434e6f2500c873207981f1c6e2fb2950e67c6a721852"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.175/reactor-cli_v1.20261004.175_linux-arm64.tar.gz"
      sha256 "27efe10deb2aff1e4e7026a37221aebc884c12d48f3269b5d083025541c62374"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.175/reactor-cli_v1.20261004.175_linux-amd64.tar.gz"
      sha256 "4bf9d65e4fb337cfc0ddf1a41b2990292a7f48b858240eaf51d681e39c90bf92"
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
