# Курсовая работа по дисциплине "Современная теория управления"
____
## Общие данные
- Тема работы: Синтез робастного регулятора по выходу для неявнополюсных синхронных двигателей с постоянными магнитами с применением расширенного наблюдателя;
- Работу выполнили:
	- Беззубов В.А., группа R42421c;
	- Колесник Н.С., группа R42411c;
- Исходная статья: https://www.sciencedirect.com/science/article/pii/S2405896320314269;

## Инструкция для запуска
1. Запустить скрипт "course_task_script.m" . При необходимости можно изменить параметры двигателя, расширенного наблюдателя, алгоритма управления и внутренней модели. Все обозначения в данном скрипте идентичны оным из статья, за одним исключением: вектор стационарных обратных связей ![equation](https://latex.codecogs.com/gif.latex?K) и матрица состояний расширенного наблюдателя ![equation](https://latex.codecogs.com/gif.latex?F) получаются из характеристических полиномов ![equation](https://latex.codecogs.com/gif.latex?\left(s+\alpha_K\right)^3) и ![equation](https://latex.codecogs.com/gif.latex?\left(s+\alpha_F\right)^3) соответственно, где параметры ![equation](https://latex.codecogs.com/gif.latex?\alpha_K) и ![equation](https://latex.codecogs.com/gif.latex?\alpha_F) можно изменить.
*Внимание!* Содержимое скрипта "additional_calculations.m" изменять *нельзя!*;
2. Открыть файл course_task_scheme_xxxxx.slx, где xxxxx - Ваша версия MATLAB;
3. Запустить моделирование.

# Course task for discipline "Modern Control Theory"
____
## General data
- Work topic: Robust Output Regulation of Permanent Magnet Synchronous Motors by Enhanced Extended Observer;
- Done by:
	- Bezzubov Valentin, group 42421c;
	- Kolesnik Nikita, group R41411c;
- Source: https://www.sciencedirect.com/science/article/pii/S2405896320314269;

## Usage instruction
1. Launch the script "course_task_script.m" . It is possible to change the parameters of the PMSM model, extended observer, controller and internal model. All the notations in the script are the same but two cases: controller vector ![equation](https://latex.codecogs.com/gif.latex?K) and state matrix of the extended observer ![equation](https://latex.codecogs.com/gif.latex?F) are calculated on base of the characteristic polynomes ![equation](https://latex.codecogs.com/gif.latex?\left(s+\alpha_K\right)^3) and ![equation](https://latex.codecogs.com/gif.latex?\left(s+\alpha_F\right)^3) accordingly, where parameters ![equation](https://latex.codecogs.com/gif.latex?\alpha_K) and ![equation](https://latex.codecogs.com/gif.latex?\alpha_F) can be changed in the script.
*Attention!* The script "additional_calculations.m" *is permitted to change!*;
2. Open the file course_task_scheme_xxxxx.slx, where xxxxx is the corresponding MATLAB version;
3. Launch the simulation.