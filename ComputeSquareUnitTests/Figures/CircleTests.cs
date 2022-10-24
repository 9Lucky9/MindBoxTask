using ComputeSquare.Figures;
using System;
using Xunit;

namespace ComputeSquareUnitTests.Figures
{
    public class CircleTests
    {
        private Circle _sut;

        /// <summary>
        /// Площадь круга должна возвращать правильный результат.
        /// </summary>
        [Theory]
        [InlineData(30.0, 2827.4333882308138)]
        [InlineData(13, 530.929158456675)]
        public void AreaOfCircleShouldReturnCorrectResult(double radius, double expectedResult)
        {
            //Arrange
            _sut = new Circle(radius);

            //Act
            var result = _sut.Area;

            //Assert
            Assert.Equal(expectedResult, result);
        }

        /// <summary>
        /// Был дан радиус меньше нуля, должен выбрасывать исключение.
        /// </summary>
        [Theory]
        [InlineData(-25)]
        [InlineData(-4)]
        public void AreaOfCircleShouldThrowArgumentException(double radius)
        {
            //Assert
            Assert.Throws<ArgumentException>( () =>
            {
                //Act
                _sut = new Circle(radius);
            });
        }
    }
}
