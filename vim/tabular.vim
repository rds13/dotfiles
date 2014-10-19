if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif
" Easy block indent for puppet
AddTabularPattern! block /=>/
