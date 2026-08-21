# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22620"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22620/reactor-cli_v1.20260821.22620_darwin-arm64.tar.gz"
      sha256 "e72f922ea7cc88f17fc6bff0871fa8e92d775a9f887cac9f30f72c213a6a9f6d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22620/reactor-cli_v1.20260821.22620_darwin-amd64.tar.gz"
      sha256 "56e2ff68d163d8c1864132b0dc574b9ee0c21ad8abe750fea4b7a37c6405904e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22620/reactor-cli_v1.20260821.22620_linux-arm64.tar.gz"
      sha256 "057294029fcfdf11084138467c5f0a71f79a1f599a40b8a18ea6d952e0994f64"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22620/reactor-cli_v1.20260821.22620_linux-amd64.tar.gz"
      sha256 "01cd37a08f58daf5c8dcfe2f55db50628797f997e92dbb2d9cc2001da7a8b43d"
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
