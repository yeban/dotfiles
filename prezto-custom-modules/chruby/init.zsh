export PATH="$(dirname $0)/external/ruby-install/bin:${PATH}"

# This provides chruby-exec command, not chruby. That is okay because prezto's
# ruby:churby auto-switch setting automatically sources chruby command based
# on chruby-exec.
export PATH="$(dirname $0)/external/chruby/bin:${PATH}"