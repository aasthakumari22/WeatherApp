import Foundation

struct WeatherData : Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
    let wind : Wind
}

struct Main: Decodable {
    
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
    let description : String
}
struct Wind: Decodable {
    let speed: Double
    let deg: Int
}
