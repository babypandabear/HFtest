^!g::								; Ctrl+Alt+G
clipboard =							; Vacía el portapapeles.
Send,^x								; Cortar (Enviar Ctrl+X) Obtiene ruta de docs.
ClipWait							; Espera a que el portapapeles contenga datos.
Loop, parse, clipboard, `n, `r		; Procesa lo que hay en portapapeles
; Loop, Parse, InputVar , Delimiter, OmitChars
{
FileMove,%A_LoopField%,C:\Users\User\Pictures	; Mueve a esta ruta
}
Return
