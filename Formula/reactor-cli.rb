# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.344"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.344/reactor-cli_v1.20261111.344_darwin-arm64.tar.gz"
      sha256 "b87f34da12218ada5005e4f734deb30585881af2dfe49ad8b2fabd72c86447f7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.344/reactor-cli_v1.20261111.344_darwin-amd64.tar.gz"
      sha256 "9f277cb3a4a8fedbca20605cd5dbc610256f1e81c1e35c6ef446501f1919f96c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.344/reactor-cli_v1.20261111.344_linux-arm64.tar.gz"
      sha256 "9564568dbdf3db158490b8fc0de2ce667847f67043d19d56ba9de3d2772d0ccf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.344/reactor-cli_v1.20261111.344_linux-amd64.tar.gz"
      sha256 "fdd7e925e5930365809b09b7429b6de8ae33b805b33055d5362f76d7db4830ea"
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
