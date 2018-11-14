@ECHO OFF

SET git=%1
IF NOT DEFINED git (
 echo Derbedeu, ce cautati? --consulta
)

IF "%git%"=="--consulta" (
	
	ECHO crea						[git init]	
	ECHO ci_boiets					[git status]
	ECHO drum_bum [-textovka [req]]			[git commit -m ""]
	ECHO duten_pula					[git push origin master]
	ECHO fute_puturos					[git clone]
	ECHO caca						[git add .]
)

IF "%git%"=="fute_puturos" (
	SET repo=%2
	git clone %repo%
)

IF "%git%"=="ci_boiets" (
	git status
)

IF "%git%"=="caca" (
	git add .
)

IF "%git%"=="drum_bum" (
	SET message=%2
	IF NOT DEFINED message (
		ECHO DERBEDEU, PULA, UNDE TEXTOVKA?
	)
	
	IF DEFINED message (
	git commit -m message
	)
)

IF "%git%"=="duten_pula" (
	git push origin master
)