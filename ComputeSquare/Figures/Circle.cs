namespace ComputeSquare.Figures
{
    /// <summary>
    /// Класс представляющий фигуру круга.
    /// </summary>
    public sealed class Circle : TwoDimensionalFigure
    {
        /// <inheritdoc cref="TwoDimensionalFigure.Area"/>
        public new double Area
        {
            get
            {
                return Math.PI * Math.Pow(Radius, 2);
            }
        }

        /// <summary>
        /// Создать экземпляр круга по радиусу.
        /// </summary>
        /// <param name="radius"></param>
        public Circle(double radius)
        {
            Radius = radius;
        }
    }
}
