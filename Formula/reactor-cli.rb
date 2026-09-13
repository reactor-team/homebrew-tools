# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260913.26290"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26290/reactor-cli_v1.20260913.26290_darwin-arm64.tar.gz"
      sha256 "e68ca867fa9d733624020fbe0c226a509819f9126892733cf5e2c1867b137880"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26290/reactor-cli_v1.20260913.26290_darwin-amd64.tar.gz"
      sha256 "ffcdffdea25ac22a62d3cf387cd57c404edc66b2aac59c800e5165c1650102c1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26290/reactor-cli_v1.20260913.26290_linux-arm64.tar.gz"
      sha256 "31160db3b70ac9182654964f7280564149d4c9fced1cc28dfaa24871f29aeb13"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260913.26290/reactor-cli_v1.20260913.26290_linux-amd64.tar.gz"
      sha256 "31d91607e671f64614911f8b419810ff9ff0fbf14a496e5c7ac78394dd522e8e"
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
