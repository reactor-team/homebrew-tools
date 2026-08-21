# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22651"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22651/reactor-cli_v1.20260821.22651_darwin-arm64.tar.gz"
      sha256 "6f6e0321d9c1701ee1427e7c5ba2067ee2a7f99b08de26ea13b267df03e59cd0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22651/reactor-cli_v1.20260821.22651_darwin-amd64.tar.gz"
      sha256 "f7fc6e4e478444fb6325c234307f9b190d1d966b9e134b3fb0a2fd13ee6e5591"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22651/reactor-cli_v1.20260821.22651_linux-arm64.tar.gz"
      sha256 "e6647418799dc5c8eec874520d8eedae1fdfa9eb8ad40addfff0bd808a76c4ed"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22651/reactor-cli_v1.20260821.22651_linux-amd64.tar.gz"
      sha256 "89c608e07464b4856baea4f3894a89752d55a70f03da951c5affbd8bbe8ea888"
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
