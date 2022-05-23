# Confetti Effects To Win
<img src="https://github.com/ihValery/ConfettiEffectsToWin/blob/main/Image/Confetti.gif?raw=true"></a>

- Для начала создайте структуру типа GeometryEffect.
    - Нам нужно определить время, скорость и направление для частиц. 
    - Сделайте переменную скорости рандомизированным числом от 20 до 200. Если вы попробуете небольшой диапазон чисел (например, 10 ... 30), взрыв частиц будет более сдержанным и менее драматичным.
    - Для направления используйте значение между -pi и pi. Этот диапазон даст нам полный круг. Если изменить диапазон чисел от 0 до пи, частицы будут двигаться вниз в форме половины круга. Если вы теперь измените диапазон чисел от -pi до 0, это даст нам противоположный эффект.
    - Используйте animatableData для увеличения значения времени. animatableData - это специальная переменная, не переименовывайте ее, иначе анимация не будет работать. Если вы удалите animatableData, у вас будут частицы, зафиксированные в случайных местах.
    - Соответствие протоколу GeometryEffect путем реализации функции effectValue. Нам нужно выяснить перемещение/положение всех частиц. Рассчитайте перевод, используя скорость, время, косинус, а также синусоидальные значения направления. Матрица аффинного преобразования используется для перевода объектов, нарисованных в графическом контексте. Создайте CGAffineTransform с нашими переводами, а затем верните ProjectionTransform с помощью нашей CGAffineTransform, которую вы создали.

- Модификатор частиц
    - Создайте модификатор представления, который дублирует его содержимое путем зацикливания. Ниже вы можете видеть, что я выбрал цикл до 80, но вы можете увеличить или уменьшить число в зависимости от того, сколько частиц вы хотите иметь.
    - Добавьте модификаторы, которые вы хотите здесь применить к частицам. Но самое главное, добавьте .modifier() с пользовательскими эффектами геометрии, которые мы создали выше, .scaleEffect() и opacity() как показано ниже.
    - Наконец, добавьте onAppear() в ZStack, который встраивает наш цикл содержимого. Внутри анимируйте значения для времени и масштаба. Что касается непрозрачности, мы хотим, чтобы она исчезла по окончании длительности анимации.
