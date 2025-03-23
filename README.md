# pMetro_maps
Maps for pMetro

Процесс обновления карт с сайта pmetro.su:
- Выполнить get-maps.cmd
  - скачивает дистрибутив pMetroSetup.exe
  - извлекает и распаковывает *.pmz карты
- Проверить все изменения карт в папке maps. Изменения в maps закомитить.
- Выполнить pack.cmd
- Из папки download скопировать изменившиеся карты в проект pmetro.github.io, папку download
- Продолжить в проекте pmetro.github.io
