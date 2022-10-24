namespace ComputeSquare.Figures
{
    /// <summary>
    /// Класс представляющий фигуру треугольника.
    /// </summary>
    public sealed class Triangle : TwoDimensionalFigure
    {
        public double FirstSide { get; }
        public double SecondSide { get; }
        public double ThirdSide { get; }
         
        /// <summary>
        /// Обозначает, является ли треугольник прямоугольным или нет.
        /// </summary>
        public bool IsRectangular 
        { 
            get
            {
                if(FirstSide > SecondSide && FirstSide > ThirdSide)
                {
                    return Math.Pow(FirstSide, 2) == 
                        Math.Pow(SecondSide, 2) + Math.Pow(ThirdSide, 2);
                }
                if (SecondSide > ThirdSide)
                {
                    return Math.Pow(SecondSide, 2) == 
                        Math.Pow(FirstSide, 2) + Math.Pow(ThirdSide, 2);
                }
                else
                {
                    return Math.Pow(ThirdSide, 2) ==
                        (Math.Pow(FirstSide, 2) + Math.Pow(SecondSide, 2));
                }
            }
        }

        /// <inheritdoc cref="TwoDimensionalFigure.Area"/>
        public new double Area
        {
            get
            {
                var perimeter = (FirstSide + SecondSide + ThirdSide) / 2;
                return Math.Sqrt(perimeter * 
                    (perimeter - FirstSide) * 
                    (perimeter - SecondSide) * 
                    (perimeter - ThirdSide));
            }
        }

        /// <summary>
        /// Создать объект типа треугольник.
        /// </summary>
        /// <param name="firstSide">Первая сторона.</param>
        /// <param name="secondSide">Вторая сторона.</param>
        /// <param name="thirdSide">Третья сторона.</param>
        /// <exception cref="ArgumentException">Не правильный треугольник был создан.</exception>
        public Triangle(double firstSide, double secondSide, double thirdSide)
        {
            if(firstSide + secondSide <= thirdSide || 
                firstSide + thirdSide <= secondSide || 
                secondSide + thirdSide <= firstSide)
                    throw new ArgumentException(
                        "Сумма длин двух сторон должна превышать длину третьей стороны.");
            
            FirstSide = firstSide;
            SecondSide = secondSide;
            ThirdSide = thirdSide;
        }
    }
}
