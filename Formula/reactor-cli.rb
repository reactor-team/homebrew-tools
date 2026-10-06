# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.271"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.271/reactor-cli_v1.20261006.271_darwin-arm64.tar.gz"
      sha256 "0f81339e51f5757f9f5dd9fc85cc30d88ea41593f735e3cf41e1a32e2205f336"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.271/reactor-cli_v1.20261006.271_darwin-amd64.tar.gz"
      sha256 "9dc35d2c9bf30fd3c89c75ddf0c0ed4eb18209e4534cd67db4fa58ceadd44b46"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.271/reactor-cli_v1.20261006.271_linux-arm64.tar.gz"
      sha256 "ca7f7172af9def96a1798d2ded9fee7ede60ff087036697a59a2a29081d0ccc1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.271/reactor-cli_v1.20261006.271_linux-amd64.tar.gz"
      sha256 "ee9ddf499234af743cd411182fe8e677a5cd79c28e032746287be484da94f81c"
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
