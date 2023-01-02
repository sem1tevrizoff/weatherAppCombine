import Foundation
import CoreLocation

enum WeatherAPI: API {
    
    case link(String)
    case daily(lat: Double, lon: Double)
    
    var scheme: HTTPScheme {
        switch self {
        case .link, .daily:
            return .https
        }
    }
    var method: HTTPMethod {
        switch self {
        case .link, .daily:
            return .get
        }
    }
    var baseURL: String {
        switch self {
        case .link, .daily:
            return "api.openweathermap.org"
        }
    }
        
    var path: String {
        switch self {
        case .link:
            return "/data/2.5/weather/"
        case .daily:
            return "/data/2.5/onecall"
        }
    }
        
    var apiParameters: [URLQueryItem] {
        switch self {
        case .link(let city):
            return [
                URLQueryItem(name: "q", value: city),
                URLQueryItem(name: "appid", value: "fb5bece52b5f91b36dd8c1940132f704")]
        case .daily(let lat, let lon):
            return [
                URLQueryItem(name: "lat", value: "\(lat)"),
                URLQueryItem(name: "lon", value: "\(lon)"),
                URLQueryItem(name: "exclude", value: "minutely"),
                URLQueryItem(name: "appid", value: "fb5bece52b5f91b36dd8c1940132f704")
            ]
        }
    }
}
