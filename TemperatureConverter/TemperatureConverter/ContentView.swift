import SwiftUI

struct ContentView: View {
    
    @State private var initialTemperature = 0.0
    @State private var initialUnit = "Celsius"
    @State private var convertTo = "Fahrenheit"
    
    let unitArray = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var convertedTemperature: Double {
        if convertTo == "Celsius" {
            return convertToCelsius()
        } else if convertTo == "Fahrenheit" {
            return (9 / 5 * convertToCelsius()) + 32
        } else {
            return convertToCelsius() + 273.15
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Initial Temperature") {
                    TextField("Initial Temperature", value: $initialTemperature, format: .number)

                    Picker("Initial Unit", selection: $initialUnit) {
                        ForEach(unitArray, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Convert To") {
                    Picker("Initial Unit", selection: $convertTo) {
                        ForEach(unitArray, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                            
                Section("Converted Temperature") {
                    Text("\(convertedTemperature)")
                }
            }
            .navigationTitle("Temperature Converter")
        }
    }
    
    func convertToCelsius() -> Double {
        if initialUnit == "Celsius" {
            return initialTemperature
        } else if initialUnit == "Fahrenheit" {
            return (initialTemperature - 32) * 5 / 9
        } else {
            return initialTemperature - 273.15
        }
    }
}

#Preview {
    ContentView()
}
