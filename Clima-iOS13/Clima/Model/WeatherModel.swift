import Foundation


struct WeatherModel {
    
    let cityName: String
    let temperature: Double
    let conditionId: Int
    
    var temperatureString: String {
        let DecimalString = String(format: "%.1f", temperature)
        return DecimalString
    }
    
    
    var conditionName: String {
        switch conditionId {
        case 200...232 :
            return "cloud.bolt"
        case 300...321 :
            return "cloud.drizzle"
        case 500...531 :
            return "rain"
        case 600...622 :
            return "snow"
        case 800 :
            return "clear"
        case 801...804 :
            return "cloud.fill"
        default:
            return "cloud"
        }
        
    }
    
    
}
