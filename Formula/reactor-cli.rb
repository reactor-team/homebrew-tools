# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27831"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27831/reactor-cli_v1.20260919.27831_darwin-arm64.tar.gz"
      sha256 "e177fe434b8e83658a71747dbd5e06d825552523a043db8a312d43610677bb58"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27831/reactor-cli_v1.20260919.27831_darwin-amd64.tar.gz"
      sha256 "ce1cec49cc05a5e7cfba7ed72c151e1b55f51096a8d6dbfef3912f4db7738c49"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27831/reactor-cli_v1.20260919.27831_linux-arm64.tar.gz"
      sha256 "f8ce12544008149aa219de114564b1cdad2d8337f799eeed38b662b61f6a2730"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27831/reactor-cli_v1.20260919.27831_linux-amd64.tar.gz"
      sha256 "fab3ceaf03f4761666e257c4e896fc2a8c343b7cd8c6a216f9af6afa5223f0d5"
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
