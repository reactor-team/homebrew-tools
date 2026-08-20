# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22449"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22449/reactor-cli_v1.20260820.22449_darwin-arm64.tar.gz"
      sha256 "70da9927d24e4a19b4371073ffcb26114818ad4bb990c8c8ca63295503099ba9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22449/reactor-cli_v1.20260820.22449_darwin-amd64.tar.gz"
      sha256 "4c09a9124edbc171f4bb3ba260c4e334441443caeda9a9e296c48e470a36373c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22449/reactor-cli_v1.20260820.22449_linux-arm64.tar.gz"
      sha256 "0d8b071040dce681ca23aa8ec991fccb267d138faf3936657c1d3b02b7bd05d1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22449/reactor-cli_v1.20260820.22449_linux-amd64.tar.gz"
      sha256 "4889f81a542721d82ce5c90bf5fdef9e4488fd0f3cee30ddd7cd9fbc2c79cb24"
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
