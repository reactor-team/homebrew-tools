# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261021.62"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261021.62/awsrea_v1.20261021.62_darwin-arm64.tar.gz"
      sha256 "d6f4e3032a01ea5afba83a12a790b7126c4f67b4c5b82a58da993df52a5a9957"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261021.62/awsrea_v1.20261021.62_darwin-amd64.tar.gz"
      sha256 "40d4a83e7587ead250735f306cbdc16320ca27f76e444287db849ca451714ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261021.62/awsrea_v1.20261021.62_linux-arm64.tar.gz"
      sha256 "778d76bdcbec55b4df25edcd7ecccc2a554a4e4d10df98ea9c9afb9dcebc0bb1"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261021.62/awsrea_v1.20261021.62_linux-amd64.tar.gz"
      sha256 "66b1949a9781e0387c136ecaf56ee475762be047c7ef6fb1a2417f5e7066f310"
    end
  end

  def install
    bin.install "awsrea"
    # Keeps existing `aws-sso-reactor` aliases and credential_process lines working.
    bin.install_symlink "awsrea" => "aws-sso-reactor"
  end

  def caveats
    <<~EOS
      Configure awsrea before first use:
        awsrea init
      or copy the config file your team provides to ~/.reactor/awsrea.yaml.

      To let awsrea switch profiles in your shell, add this line to ~/.zshrc:
        eval "$(awsrea shell-init)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsrea --version")
  end
end
