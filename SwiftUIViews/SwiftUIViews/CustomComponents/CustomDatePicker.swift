//
//  CustomDatePicker.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomDatePicker: View {
    @Binding private var selectedDate: Date
    private var minDate: Date
    private var maxDate: Date

    init(selectedDate: Binding<Date>, minDate: Date, maxDate: Date) {
        self._selectedDate = selectedDate
        self.minDate = minDate
        self.maxDate = maxDate
    }

    var body: some View {
        VStack {
            DatePicker("Select a date", selection: $selectedDate, in: minDate...maxDate, displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .padding()
        }
    }
}

struct DateContentView: View {

    @State var selectedDate: Date = .init()

    var body: some View {
        VStack {
            CustomDatePicker(
                selectedDate: $selectedDate,
                minDate: Calendar.current.date(byAdding: .year, value: -1, to: Date())!,
                maxDate: Calendar.current.date(byAdding: .year, value: 1, to: Date())!
            )
            .padding()

            var dateFormatter: DateFormatter {
                let formatter = DateFormatter()
                formatter.dateStyle = .medium
                return formatter
            }

            Text("Selected date: \(selectedDate, formatter: dateFormatter)")
                .padding()
        }
    }
}

#Preview {
    DateContentView()
}
