namespace ComputeSquare
{
    /// <summary>
    /// Класс представляющий фигуру в двухмерном пространстве.
    /// </summary>
    public abstract class TwoDimensionalFigure
    {
        private double _radius;

        /// <summary>
        /// Площадь фигуры.
        /// </summary>
        public double Area { get; }

        /// <summary>
        /// Радиус фигуры.
        /// </summary>
        public double Radius 
        { 
            get => _radius; 

            protected set
            {
                if(value < 0)
                    throw new ArgumentException("Радиус не может быть отрицательным.");
                _radius = value;
            }
        }
    }
}
