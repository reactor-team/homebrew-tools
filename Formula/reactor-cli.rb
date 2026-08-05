# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260805.20884"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20884/reactor-cli_v1.20260805.20884_darwin-arm64.tar.gz"
      sha256 "5e704a6a5feeff0f6f0591252d4fd63ae16b5429bc3fb6382aa95d84e4bc467f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20884/reactor-cli_v1.20260805.20884_darwin-amd64.tar.gz"
      sha256 "be7df98564bf17b4dcbb4c973b90aa085cad57f3cad94e2f0f19591de3704cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20884/reactor-cli_v1.20260805.20884_linux-arm64.tar.gz"
      sha256 "874d49d9165fe31c7e51ac05e996d66a49391ef632717b36876aa7ab8f6ddbf0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20884/reactor-cli_v1.20260805.20884_linux-amd64.tar.gz"
      sha256 "7c313b4cbc6292ad6ac05f0870bb892173fe9c3059855188ec5b4f24f57ee12c"
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
