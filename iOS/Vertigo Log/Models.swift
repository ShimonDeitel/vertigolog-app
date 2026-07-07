import Foundation

struct EpisodeItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var trigger: String
    var severity: String
    var durationMinutes: String
    var notes: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), trigger: String, severity: String, durationMinutes: String, notes: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.trigger = trigger
        self.severity = severity
        self.durationMinutes = durationMinutes
        self.notes = notes
    }

    static func blank() -> EpisodeItem {
        EpisodeItem(trigger: "", severity: "", durationMinutes: "", notes: "")
    }
}
