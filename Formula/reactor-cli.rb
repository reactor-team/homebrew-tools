# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260727.19673"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19673/reactor-cli_v1.20260727.19673_darwin-arm64.tar.gz"
      sha256 "828bf643bd30ca3c5761f6b5a970ef6f8a4264d6ba89450b55bcdfb06b3efd9f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19673/reactor-cli_v1.20260727.19673_darwin-amd64.tar.gz"
      sha256 "cad7809aa621a404ce6f5b6552b7614999254d22a59d8979a0822c645c1e1e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19673/reactor-cli_v1.20260727.19673_linux-arm64.tar.gz"
      sha256 "d6c45a74bf6b0f350881db0895435974a23ca4eb37d4babb79683dc7f2826e72"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19673/reactor-cli_v1.20260727.19673_linux-amd64.tar.gz"
      sha256 "d76cd1825cbb1045c7bbb39d47d4f66b68365c4439e5548c81781dca87060191"
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
