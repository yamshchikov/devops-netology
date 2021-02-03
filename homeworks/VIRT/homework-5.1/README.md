# Homework 5.1

1. Паравиртуализация - устанавливается отдельная автономная копия ОС, не зависящая от хостовой системы. Хотя, в отличие от аппаратной виртуализации, здесь гостевая система знает, что она виртуальная и может использовать упрощенный доступ к средствам хостовой ОС (например, к физическим устройствам).

   Виртуализация на основе ОС - экземпляры ОС (контейнеры) используют одно и то же ядро, но полностью изолированы друг от друга.

2. Высоконагруженная база данных, чувствительная к отказу - физические сервера. Быстрее работает, выше надежность. Конечно, при условии, что это всё бэкапится и в случае отказа может быть быстро развернуто на другой машине. Тут бы также подошла аппаратная виртуализация, но её нет в списке.

   Различные Java-приложения - виртуализация уровня ОС. Отдельные приложения не жалко потерять и можно легко запустить снова, поэтому используем контейнеры.

   Windows системы для использования Бухгалтерским отделом - паравиртуализация. Так как контейнеры под Windows - слишком сложно, а отдельную машину под это дело выделять - слишком жирно будет. Обычная виртуалка подойдет лучше всего, а надежность здесь не так критична.

   Системы, выполняющие высокопроизводительные расчеты на GPU - физические сервера. Важен прямой доступ к физическому устройству (видеокарте), для скорости работы. Смысла делать виртуалки просто нет - нам нужна абсолютно вся имеющася мощность сразу (я так понимаю, что речь про майнинг).

3. Можно вкладывать как матрешку. Аппаратная -> Паравиртуализация -> Контейнеры. Все три слоя сразу вряд ли нужны, но контейнеры внутри одного из видов - вполне обычное дело. Например в облаке.