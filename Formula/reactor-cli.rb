# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260626.16695"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16695/reactor-cli_v1.20260626.16695_darwin-arm64.tar.gz"
      sha256 "ad69e77ff0319d1fee51ea6c0c6d8e06a601da4b137756ef81661b2b052d5d4f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16695/reactor-cli_v1.20260626.16695_darwin-amd64.tar.gz"
      sha256 "6c3cedefe8f4692a58858a31f86fa1dba3eb13f1dc3a0ad9e472449d7b8e470a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16695/reactor-cli_v1.20260626.16695_linux-arm64.tar.gz"
      sha256 "90a1f3887c7c4b7da3a65a23ec539238e918e2a1041f7fd15a0c0bb82b15fe92"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16695/reactor-cli_v1.20260626.16695_linux-amd64.tar.gz"
      sha256 "e7f3999a74b1ba99d6a79c0851366420367d1594af0c49cb1ec668259f2fae91"
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
