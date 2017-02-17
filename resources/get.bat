for /l %%x in (100, 1, 151) do (
   echo %%x
	"C:\Program Files (x86)\GnuWin32\bin\wget" http://assets.pokemon.com/assets/cms2/img/pokedex/full/%%x.png
)
