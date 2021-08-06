//
//  HapticFeedbackView.swift
//  HapticFeedback
//
//  Created by Anton Paliakou on 8/6/21.
//

import SwiftUI

struct HapticFeedbackView: View {
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 16) {
                Text("UIImpactFeedbackGenerator:")
                    .font(.title3)
                Button(action: { impactFeedback(.heavy) }) {
                    Text("Heavy")
                }
                Button(action: { impactFeedback(.light) }) {
                    Text("Light")
                }
                Button(action: { impactFeedback(.medium) }) {
                    Text("Medium")
                }
                Button(action: { impactFeedback(.rigid) }) {
                    Text("Rigid")
                }
                Button(action: { impactFeedback(.soft) }) {
                    Text("Soft")
                }
            }
            VStack(spacing: 16) {
                Text("UINotificationFeedbackGenerator:")
                    .font(.title3)
                Button(action: { notificationFeedback(.error) }) {
                    Text("Error")
                }
                Button(action: { notificationFeedback(.success) }) {
                    Text("Success")
                }
                Button(action: { notificationFeedback(.warning) }) {
                    Text("Warning")
                }
            }
            VStack(spacing: 16) {
                Text("UISelectionFeedbackGenerator:")
                    .font(.title3)
                Button(action: { selectionFeedback() }) {
                    Text("SelectionChanged")
                }
            }
        }
    }
    
    // MARK: - UIImpactFeedbackGenerator
    
    private func impactFeedback(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let impactFeedback = UIImpactFeedbackGenerator(style: style)
        impactFeedback.prepare()
        impactFeedback.impactOccurred()
    }
    
    // MARK: - UINotificationFeedbackGenerator
    
    private func notificationFeedback(_ feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
        let notificationFeedback = UINotificationFeedbackGenerator()
        notificationFeedback.prepare()
        notificationFeedback.notificationOccurred(feedbackType)
    }
    
    // MARK: - UISelectionFeedbackGenerator
    
    private func selectionFeedback() {
        let selectionFeedback = UISelectionFeedbackGenerator()
        selectionFeedback.selectionChanged()
    }
}
