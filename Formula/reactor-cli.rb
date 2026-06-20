# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260620.16389"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260620.16389/reactor-cli_v1.20260620.16389_darwin-arm64.tar.gz"
      sha256 "0cff911223a06b23c09ba229549bd0ba80a8b7fc046889b37e89daba8c9427c2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260620.16389/reactor-cli_v1.20260620.16389_darwin-amd64.tar.gz"
      sha256 "03e5c9648222bb4e55b136d2229d7798616790d1607d23b1aeef48a9311283eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260620.16389/reactor-cli_v1.20260620.16389_linux-arm64.tar.gz"
      sha256 "8125b57dae0d659ed3344b32a045e85c61830eec5606c4bf15f699c33c91568a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260620.16389/reactor-cli_v1.20260620.16389_linux-amd64.tar.gz"
      sha256 "d82c38b832b7dad4fafc304c2d3d400bf4e77e4f3bd54f66e8797ab5093a075f"
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
