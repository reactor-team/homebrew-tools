# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17753"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17753/reactor-cli_v1.20260707.17753_darwin-arm64.tar.gz"
      sha256 "d75d40c5271ed1e768793ad65b111e7adabe85bbe218996929dcfda6e8f2d42a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17753/reactor-cli_v1.20260707.17753_darwin-amd64.tar.gz"
      sha256 "b5647ddece8b5d4b555db0c897e128508fadc210e575a84005797a1d347e985e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17753/reactor-cli_v1.20260707.17753_linux-arm64.tar.gz"
      sha256 "708b2e187113867d0f0911c6c56c0af5bdf2060f00f28b477fbdd008c89fb9aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17753/reactor-cli_v1.20260707.17753_linux-amd64.tar.gz"
      sha256 "526270e850e315c7e8ae1ae3eab03595fdfde72361d68c6caada8cc46e6f8ed3"
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
