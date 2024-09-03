import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Header
            Text("Metrics Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            // Metric 1
            MetricView(title: "Steps Today", value: "7,542", unit: "steps")

            // Metric 2
            MetricView(title: "Calories Burned", value: "354", unit: "kcal")

            // Metric 3
            MetricView(title: "Active Minutes", value: "45", unit: "minutes")
            
            Spacer()
        }
        .padding()
    }
}

struct MetricView: View {
    var title: String
    var value: String
    var unit: String

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text("\(value) \(unit)")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            Spacer()
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
