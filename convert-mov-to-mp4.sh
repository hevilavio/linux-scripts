# /bin/bash

echo "CONVERSOR BULK DE ARQUIVOS .MOV PARA .MP4. NECESSARIO TER O ffmpeg INSTALADO"

for f in *.MOV; do
	echo "Convertendo arquivo $f"
	file_out="${f%.MOV}.mp4"

	#echo $f$file_out
	ffmpeg -i $f -vcodec h264 -acodec aac -strict -2 -b:v 1024k $file_out

done;


