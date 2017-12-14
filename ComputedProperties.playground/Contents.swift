import UIKit

class WeatherReport {
    var day: String
    var condition: String
    var tempCelsius: Double
    
    //Computed Property
    var tempFahrenheit: Double{
        get{
            return (tempCelsius * 9/5 + 32)
        }
        set(newValue){
            tempCelsius = (newValue - 32) * 5/9
        }
    }
    
    init(day: String, condition: String, tempCelsius: Double){
        self.day = day
        self.condition = condition
        self.tempCelsius = tempCelsius
    }
}

var weatherSaturday = WeatherReport(day: "Saturday", condition: "Sunny", tempCelsius: 25)
weatherSaturday.tempFahrenheit

weatherSaturday.tempFahrenheit = 52
weatherSaturday.tempCelsius
