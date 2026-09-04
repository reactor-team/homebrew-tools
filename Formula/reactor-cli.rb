# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24905"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24905/reactor-cli_v1.20260904.24905_darwin-arm64.tar.gz"
      sha256 "ec4d7b8883208edf720f7f1d3e499bb2ce29e78034ae69c4bcd9e81bf17a37d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24905/reactor-cli_v1.20260904.24905_darwin-amd64.tar.gz"
      sha256 "e6f0b7543a1829dfd5390c5bbdfeb369ce5dc174e595539a14083097557b7242"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24905/reactor-cli_v1.20260904.24905_linux-arm64.tar.gz"
      sha256 "428a15c685f66be0868726b68152740a3382c9bd53c0cc4e49a4034506625c9c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24905/reactor-cli_v1.20260904.24905_linux-amd64.tar.gz"
      sha256 "6653ea2a812c6c9e29ec128385c86cbebf3363cd1f39654da66ed174a97c0d91"
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
