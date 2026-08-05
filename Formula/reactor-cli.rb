# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260805.20881"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20881/reactor-cli_v1.20260805.20881_darwin-arm64.tar.gz"
      sha256 "9a8288dbbb03f4b0a8eb222a899388ce07fade4c64cc6b284fe8f98fed0597ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20881/reactor-cli_v1.20260805.20881_darwin-amd64.tar.gz"
      sha256 "655307567225bafd4f75e95ae33e7b940a142f546d268403063aca8994becbc5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20881/reactor-cli_v1.20260805.20881_linux-arm64.tar.gz"
      sha256 "a2edd9b82b89fae4892561bcab6f752832fcfb46d01e320e7c3c61aec4298098"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260805.20881/reactor-cli_v1.20260805.20881_linux-amd64.tar.gz"
      sha256 "cc3b6b4bc3289fcf7f79b8adfe07ce8972751958ad8a7299a547a4ec2e685b00"
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
