# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260729.20030"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20030/reactor-cli_v1.20260729.20030_darwin-arm64.tar.gz"
      sha256 "fe1e1e87eb59249d0b8578668fa6e54dc1b38794bfe8e723a6fa856f6180c875"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20030/reactor-cli_v1.20260729.20030_darwin-amd64.tar.gz"
      sha256 "f8f4d2761f1d2fc8ae517ef35d1dfc2158ae445da31587bb6e769950491fa1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20030/reactor-cli_v1.20260729.20030_linux-arm64.tar.gz"
      sha256 "9b2e4a1293754808afc6bf90fa71c3f293360e498604743ed3b575e75f1ba59f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20030/reactor-cli_v1.20260729.20030_linux-amd64.tar.gz"
      sha256 "0986c4d0f2b1dc15be330b7f4a533ca86c30b2bf415adaafdc4d10ae41a2e0ab"
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
