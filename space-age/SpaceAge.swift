import Foundation

class SpaceAge {
    let secondsOnEarth = 31557600.0
    let seconds: Double
    var earthYears: Double {
        return self.seconds / secondsOnEarth
    }
    
    var onEarth: Double {
        return hundreth(earthYears)
    }
    var onMercury: Double {
        return hundreth(earthYears / PlanetYears.Mercury.rawValue)
    }
    var onVenus: Double {
        return hundreth(earthYears / PlanetYears.Venus.rawValue)
    }
    var onMars: Double {
        return hundreth(earthYears / PlanetYears.Mars.rawValue)
    }
    var onJupiter: Double {
        return hundreth(earthYears / PlanetYears.Jupiter.rawValue)
    }
    var onSaturn: Double {
        return hundreth(earthYears / PlanetYears.Saturn.rawValue)
    }
    var onUranus: Double {
        return hundreth(earthYears / PlanetYears.Uranus.rawValue)
    }
    var onNeptune: Double {
        return hundreth(earthYears / PlanetYears.Neptune.rawValue)
    }
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
    private func hundreth(x: Double) -> Double {
        return round(100.0 * x) / 100
    }
    
    enum PlanetYears: Double {
        case Mercury = 0.2408467
        case Venus = 0.61519726
        case Mars = 1.8808158
        case Jupiter = 11.862615
        case Saturn = 29.447498
        case Uranus = 84.016846
        case Neptune = 164.79132
    }
}
