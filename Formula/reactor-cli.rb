# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22646"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22646/reactor-cli_v1.20260821.22646_darwin-arm64.tar.gz"
      sha256 "980512b2c4d7107a37a4731ca0e71e0618da67c17b8f94825bc6f2cf311faab6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22646/reactor-cli_v1.20260821.22646_darwin-amd64.tar.gz"
      sha256 "18def57940a30444b084124e8f2444cb7bac120f33d99d14d14bf57fb34dc6a2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22646/reactor-cli_v1.20260821.22646_linux-arm64.tar.gz"
      sha256 "db30817df10eaf863312f2cafbb38b084255cb2757ed0d7b2cf729dd1a411bd6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22646/reactor-cli_v1.20260821.22646_linux-amd64.tar.gz"
      sha256 "825577c0f2c966af56aafa92755e7e5f3ed70985a28a4daa9c7c1f2b39dbd37f"
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
