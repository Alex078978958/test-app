# test-app

# Часть 1
## Какие задачи будут проверены в первую очередь и почему?
Сначала я проверил авторизацию. Исходил я из 2 идей. Во-первых, мне было проще идти по порядку. Во-вторых, мне показалось, что первоначально будет правильнее проверить наиболее используемый и наиболее критичный функционал. Каждый пользователь должен пройти через авторизацию, если возникли бы проблемы со входом пользователь просто не попал бы на сайт. Пройдя авторизацию, я решил проверить форму, с помощью которой на сайте можно добавлять книги. Мне показалась, что проверка этой логики будет наиболее приоритетной, ведь в этом основная задумка нашего сайта. К тому же мне показалось, что именно в форме может быть наибольшее количество багов(так и вышло).


## Какие сценарии нужно отобрать для автоматизации
Это должны быть сценарии длинные или часто используемые. Я планирую автоматизировать тест-кейсы, которые так или иначе связанны с формой. 


## Как оценить покрытие требований?
В данном случае я не успел написать требования к проекту(если это подразумевалось сделать). Мне кажется, что если на каждое требование иметь несколько тест-кейсов, то покрытие будет весьма хорошим.

# Тест-кейсы и баг-репорты тут https://docs.google.com/spreadsheets/d/1jcwjXMBJTZ-mnDxTWUtqpT2PME9Dc2W_YLkCxkcWmrI/edit?usp=sharing



# Часть 2
## Реализовать Smoke проверку данного приложения по ранее подготовленным тестам.
Я сгруппировал тест-кейсы в кучки и создал на их основе авто тесты. Smoke проверка реализована.

## Сопроводить инструкцией по запуску
Для того, чтобы запустить автотесты необходимо:
1. Запулить себе ветку "my_test".
2. Внутри IDE перейти в нужную папку с тест-кейсами с помощью консоли(cd ../ - шаг назад  cd "название папки" - шаг вперёд).
3. Написать в консоли "robot файл.robot" - это запустит наши тест-кейсы.
4. Посмотреть логи, чтобы увидеть более подробный результат.

## Оценить покрытие
Думаю, что покрытие вышло неплохое. Я протестировал основной функционал.
