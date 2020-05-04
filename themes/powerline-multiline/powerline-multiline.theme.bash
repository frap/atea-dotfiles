#!/usr/bin/env bash

. "$BASH_IT/themes/powerline-multiline/powerline-multiline.base.bash"

PROMPT_CHAR=${POWERLINE_PROMPT_CHAR:="❯"}
POWERLINE_LEFT_SEPARATOR=${POWERLINE_LEFT_SEPARATOR:=""}
POWERLINE_LEFT_SEPARATOR_SOFT=${POWERLINE_LEFT_SEPARATOR_SOFT:=""}
POWERLINE_RIGHT_SEPARATOR=${POWERLINE_RIGHT_SEPARATOR:=""}
POWERLINE_RIGHT_SEPARATOR_SOFT=${POWERLINE_RIGHT_SEPARATOR_SOFT:=""}
POWERLINE_LEFT_END=${POWERLINE_LEFT_END:=""}
POWERLINE_RIGHT_END=${POWERLINE_RIGHT_END:=""}
POWERLINE_PADDING=${POWERLINE_PADDING:=2}

POWERLINE_COMPACT=${POWERLINE_COMPACT:=0}
POWERLINE_COMPACT_BEFORE_SEPARATOR=${POWERLINE_COMPACT_BEFORE_SEPARATOR:=${POWERLINE_COMPACT}}
POWERLINE_COMPACT_AFTER_SEPARATOR=${POWERLINE_COMPACT_AFTER_SEPARATOR:=${POWERLINE_COMPACT}}
POWERLINE_COMPACT_BEFOR_FIRST_SEGMENT=${POWERLINE_COMPACT_BEFORE_FIRST_SEGMENT:=${POWERLINE_COMPACT}}
POWERLINE_COMPACT_AFTER_LAST_SEGMENT=${POWERLINE_COMPACT_AFTER_LAST_SEGMENT:=${POWERLINE_COMPACT}}
POWERLINE_COMPACT_PROMPT=${POWERLINE_COMPACT_PROMPT:=${POWERLINE_COMPACT}}

USER_INFO_SSH_CHAR=${POWERLINE_USER_INFO_SSH_CHAR:=" "}
USER_INFO_THEME_PROMPT_COLOR=${POWERLINE_USER_INFO_COLOR:=32}
USER_INFO_THEME_PROMPT_COLOR_SUDO=${POWERLINE_USER_INFO_COLOR_SUDO:=202}

PYTHON_VENV_CHAR=${POWERLINE_PYTHON_VENV_CHAR:="❲p❳ "}
CONDA_PYTHON_VENV_CHAR=${POWERLINE_CONDA_PYTHON_VENV_CHAR:="❲c❳ "}
PYTHON_VENV_THEME_PROMPT_COLOR=${POWERLINE_PYTHON_VENV_COLOR:=35}

SCM_NONE_CHAR=""
SCM_GIT_CHAR=${POWERLINE_SCM_GIT_CHAR:=" "}
SCM_HG_CHAR=${POWERLINE_SCM_HG_CHAR:="☿ "}
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN_COLOR=${POWERLINE_SCM_CLEAN_COLOR:=25}
SCM_THEME_PROMPT_DIRTY_COLOR=${POWERLINE_SCM_DIRTY_COLOR:=88}
SCM_THEME_PROMPT_STAGED_COLOR=${POWERLINE_SCM_STAGED_COLOR:=30}
SCM_THEME_PROMPT_UNSTAGED_COLOR=${POWERLINE_SCM_UNSTAGED_COLOR:=92}
SCM_THEME_PROMPT_COLOR=${SCM_THEME_PROMPT_CLEAN_COLOR}

NVM_THEME_PROMPT_PREFIX=""
NVM_THEME_PROMPT_SUFFIX=""
NODE_CHAR=${POWERLINE_NODE_CHAR:="❲n❳ "}
NODE_THEME_PROMPT_COLOR=${POWERLINE_NODE_COLOR:=22}

RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""
RBENV_THEME_PROMPT_PREFIX=""
RBENV_THEME_PROMPT_SUFFIX=""
RUBY_THEME_PROMPT_COLOR=${POWERLINE_RUBY_COLOR:=161}
RUBY_CHAR=${POWERLINE_RUBY_CHAR:="❲r❳ "}

TERRAFORM_THEME_PROMPT_COLOR=${POWERLINE_TERRAFORM_COLOR:=161}
TERRAFORM_CHAR=${POWERLINE_TERRAFORM_CHAR:="❲t❳ "}

KUBERNETES_CONTEXT_THEME_CHAR=${POWERLINE_KUBERNETES_CONTEXT_CHAR:="⎈ "}
KUBERNETES_CONTEXT_THEME_PROMPT_COLOR=${POWERLINE_KUBERNETES_CONTEXT_COLOR:=26}

AWS_PROFILE_CHAR=${POWERLINE_AWS_PROFILE_CHAR:="❲aws❳ "}
AWS_PROFILE_PROMPT_COLOR=${POWERLINE_AWS_PROFILE_COLOR:=208}

CWD_THEME_PROMPT_COLOR=${POWERLINE_CWD_COLOR:=240}

LAST_STATUS_THEME_PROMPT_COLOR=${POWERLINE_LAST_STATUS_COLOR:=196}

CLOCK_THEME_PROMPT_COLOR=${POWERLINE_CLOCK_COLOR:=240}

BATTERY_AC_CHAR=${BATTERY_AC_CHAR:="⚡"}
BATTERY_STATUS_THEME_PROMPT_GOOD_COLOR=${POWERLINE_BATTERY_GOOD_COLOR:=70}
BATTERY_STATUS_THEME_PROMPT_LOW_COLOR=${POWERLINE_BATTERY_LOW_COLOR:=208}
BATTERY_STATUS_THEME_PROMPT_CRITICAL_COLOR=${POWERLINE_BATTERY_CRITICAL_COLOR:=160}

THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:="%H:%M:%S"}

IN_VIM_THEME_PROMPT_COLOR=${POWERLINE_IN_VIM_COLOR:=245}
IN_VIM_THEME_PROMPT_TEXT=${POWERLINE_IN_VIM_TEXT:="vim"}

HOST_THEME_PROMPT_COLOR=${POWERLINE_HOST_COLOR:=25}

SHLVL_THEME_PROMPT_COLOR=${POWERLINE_SHLVL_COLOR:=${HOST_THEME_PROMPT_COLOR}}
SHLVL_THEME_PROMPT_CHAR=${POWERLINE_SHLVL_CHAR:="§"}

DIRSTACK_THEME_PROMPT_COLOR=${POWERLINE_DIRSTACK_COLOR:=${CWD_THEME_PROMPT_COLOR}}
DIRSTACK_THEME_PROMPT_CHAR=${POWERLINE_DIRSTACK_CHAR:="←"}

HISTORY_NUMBER_THEME_PROMPT_COLOR=${POWERLINE_HISTORY_NUMBER_COLOR:=0}
HISTORY_NUMBER_THEME_PROMPT_CHAR=${POWERLINE_HISTORY_NUMBER_CHAR:="#"}

COMMAND_NUMBER_THEME_PROMPT_COLOR=${POWERLINE_COMMAND_NUMBER_COLOR:=0}
COMMAND_NUMBER_THEME_PROMPT_CHAR=${POWERLINE_COMMAND_NUMBER_CHAR:="#"}

POWERLINE_LEFT_PROMPT=${POWERLINE_LEFT_PROMPT:="scm python_venv ruby node cwd"}
POWERLINE_RIGHT_PROMPT=${POWERLINE_RIGHT_PROMPT:="in_vim clock battery user_info"}

safe_append_prompt_command __powerline_prompt_command
