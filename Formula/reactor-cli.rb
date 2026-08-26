# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23254"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23254/reactor-cli_v1.20260826.23254_darwin-arm64.tar.gz"
      sha256 "022f768514cc059ec85af7a9204cd7d7a975f3feb668474609d0caf6bda659b0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23254/reactor-cli_v1.20260826.23254_darwin-amd64.tar.gz"
      sha256 "8fe16b1769d644ead72d02ad0b33cea5b3a8f1fad91d9f1b79e549b37cd6c3be"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23254/reactor-cli_v1.20260826.23254_linux-arm64.tar.gz"
      sha256 "8da1f9427f9aa5bf86358eacaa06d46e407d57d1422c9f393ac6c2e794612b7b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23254/reactor-cli_v1.20260826.23254_linux-amd64.tar.gz"
      sha256 "880d22d43593a309df80e9acdd3b21bfc5fbb6e07bc54428098ecd3dab0fff0c"
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
