# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.241"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.241/reactor-cli_v1.20261015.241_darwin-arm64.tar.gz"
      sha256 "31ab7c4bdb6fecc01bd31419d42b37f2974dadc942245dda057f1269b63ef150"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.241/reactor-cli_v1.20261015.241_darwin-amd64.tar.gz"
      sha256 "014418ad005bbb508e108fe2efb31a9c760d9b413f3a8152542d434de48442ea"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.241/reactor-cli_v1.20261015.241_linux-arm64.tar.gz"
      sha256 "0d23482358ec50a346b1fa2845efc82ea227d70f475618b1c74872bb8c0437e9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.241/reactor-cli_v1.20261015.241_linux-amd64.tar.gz"
      sha256 "d03b9f93ecb9ba2836eafeb734779f3e447ba526982a341d65a9e087bf7caf59"
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
