# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.243"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.243/reactor-cli_v1.20261104.243_darwin-arm64.tar.gz"
      sha256 "d1baba6e28f5c14c39369fc50677fd4611a34ab7ce35ec250ca3e14f369faf42"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.243/reactor-cli_v1.20261104.243_darwin-amd64.tar.gz"
      sha256 "c80fbb2d5cc1036ff23f169881106511dbe5be0984d6f627e3e6e3a763b5c5c3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.243/reactor-cli_v1.20261104.243_linux-arm64.tar.gz"
      sha256 "319c5bb5481c459a73fe86eb6013f1d2cbfadc0c23390f99c29f434d50692920"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.243/reactor-cli_v1.20261104.243_linux-amd64.tar.gz"
      sha256 "4182dd3391c4ab39c8968e5330894da68e8d733b9a723c2b6e0823c844f06a24"
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
