using ComputeSquare.Figures;
using System;
using Xunit;

namespace ComputeSquareUnitTests.Figures
{
    public class TriangleTests
    {
        private Triangle _sut;

        /// <summary>
        /// Была дана правильная площадь треугольника, 
        /// должен вовзращать правильный результат
        /// </summary>
        [Theory]
        [InlineData(20.0, 20.0, 20.0, 173.20508075688772)]
        [InlineData(14.0, 18.0, 26.0, 119.81235328629515)]
        public void AreaOfTriangleShouldReturnCorrectArea(
            double firstSide,
            double secondSide,
            double thirdSide,
            double expectedResult)
        {
            //Arrange
            _sut = new Triangle(
                firstSide,
                secondSide,
                thirdSide);

            //Act
            var result = _sut.Area;

            //Assert
            Assert.Equal(expectedResult, result);
        }

        /// <summary>
        /// Был дан прямоугольный треугольник, должен вовзращать правильный результат.
        /// </summary>
        [Theory]
        [InlineData(3.0, 4.0, 5.0, true)]
        [InlineData(3.0, 5.0, 4.0, true)]
        [InlineData(14.0, 18.0, 26.0, false)]
        public void AreaOfTriangleShouldReturnCorrectResult(
            double firstSide,
            double secondSide,
            double thirdSide,
            bool expectedResult)
        {
            //Arrange
            _sut = new Triangle(
                firstSide,
                secondSide,
                thirdSide);

            //Act
            var result = _sut.IsRectangular;

            //Assert
            Assert.Equal(expectedResult, result);
        }

        /// <summary>
        /// Не правильный треугольник, должен выбрасывать исключение.
        /// </summary>
        [Theory]
        [InlineData(6.0, 8.0, 999.0)]
        [InlineData(20.0, 20.0, 40.0)]
        [InlineData(323.0, 20.0, 40.0)]
        public void AreaOfTriangleShouldThrowArgumentException(
            double firstSide,
            double secondSide,
            double thirdSide)
        {

            //Assert
            Assert.Throws<ArgumentException>( () =>
            {
                //Act
                _sut = new Triangle(
                    firstSide,
                    secondSide,
                    thirdSide);
            });
        }

    }
}
