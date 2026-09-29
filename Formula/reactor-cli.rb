# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.192"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.192/reactor-cli_v1.20260929.192_darwin-arm64.tar.gz"
      sha256 "bf6f98e1febebf4c3422fdc8688d14d546ce564ebb54392168fba20faaab6f53"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.192/reactor-cli_v1.20260929.192_darwin-amd64.tar.gz"
      sha256 "50219122a22d18f0f709b31f9bfada08eda5228cb4abf4bb5cbccda3f4fd90eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.192/reactor-cli_v1.20260929.192_linux-arm64.tar.gz"
      sha256 "ebb652ddcf290688fa6dbe308b4589e88d906cb8405ac9b7453f0fae0114a550"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.192/reactor-cli_v1.20260929.192_linux-amd64.tar.gz"
      sha256 "fd208bbcc33083ed26514f9373d565c5468ffce3fd6588562e3a4f12b016825b"
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
