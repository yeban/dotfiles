# This is used for running jobs.
SCRATCH_PARTITION=${SCRATCH_PARTITION:-/data/scratch}

# If this is interactive shell, hand over to zsh.
# Jobs submitted to qsub fail without this check.
if [ -n "$PS1" ]; then
  module load use.own tmux/2.6
  module load git/2.12.0
  module load zsh/5.4.2
  module load htop
  exec zsh -l
fi
