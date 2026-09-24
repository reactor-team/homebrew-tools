# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28398"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28398/reactor-cli_v1.20260924.28398_darwin-arm64.tar.gz"
      sha256 "cb0e830da4de28005afd2fba64dfb4ec6b161db2f172fe20f6fe0b5ae89ea906"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28398/reactor-cli_v1.20260924.28398_darwin-amd64.tar.gz"
      sha256 "e4fd8f1db2659d33fd866d21cb0a326c187e91477ce1cfdd3b41c9083168d56d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28398/reactor-cli_v1.20260924.28398_linux-arm64.tar.gz"
      sha256 "245307785d18db616b69518c7eed351563be14eec2574b42c9ff477e152a0721"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28398/reactor-cli_v1.20260924.28398_linux-amd64.tar.gz"
      sha256 "d6054eafcaa2af0d166be7dd1555914fcc15c44ea72fd460b9c1e37516daec08"
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
