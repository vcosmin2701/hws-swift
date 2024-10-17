import Foundation

//------------Arrays----------------

var scores = Array<Int>()
scores.append(100)
scores.append(80)
print(scores)

func countTeams(teams: [String]) {
    print("Current count of F1 teams: \(teams.count)")
}

var teams = ["RedBull", "McLaren", "Ferrari", "Aston Martin"]

countTeams(teams: teams)

teams.append("Alpine")
countTeams(teams: teams)

if teams.contains("RedBull"){
    print("Max Verstappen")
}

var sortedTeams = teams.sorted()
print(sortedTeams)

sortedTeams.remove(at: 0)
print(sortedTeams)

sortedTeams.removeAll()
print(sortedTeams)
countTeams(teams: sortedTeams)

print(teams)

var reversedTeams = teams.reversed()
print(Array(reversedTeams))









