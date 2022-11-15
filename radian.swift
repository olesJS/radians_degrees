import Cocoa

let pi = 3.14

func degToRad(degree: Double) -> String {
    let rad = (degree * pi) / 180
    if rad.truncatingRemainder(dividingBy: pi) == 0 {
        return "\(Int(rad / pi))π rad"
    } else {
        return "\(rad) rad"
    }
}

func radToDeg(radian: Double) -> String {
    let degree = (180 / pi) * radian
    let minutes = (degree - Double(Int(degree))) * 60
    if minutes != 0 {
        return "\(Int(degree))º\(Int(minutes))'"
    } else {
        return "\(Int(degree))º"
    }
    
}
