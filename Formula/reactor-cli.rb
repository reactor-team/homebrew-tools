# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260729.20036"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20036/reactor-cli_v1.20260729.20036_darwin-arm64.tar.gz"
      sha256 "1a336f9bf1c2d3a46ff58ccc6b91a5bf8f68ea24b48cf4fa08a63692e907c688"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20036/reactor-cli_v1.20260729.20036_darwin-amd64.tar.gz"
      sha256 "bf545112154d930715ecf8fc62572b354f80f1286e28c19533278f12d7986642"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20036/reactor-cli_v1.20260729.20036_linux-arm64.tar.gz"
      sha256 "b74f5f9c9eabd45ec45041c1e7af38f6141061293a9b678e825d4257030d290b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260729.20036/reactor-cli_v1.20260729.20036_linux-amd64.tar.gz"
      sha256 "a8c1121494ed0737dc63176dd7bc9bb4cd740ca0f8e1816bd600456ec44f703f"
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
