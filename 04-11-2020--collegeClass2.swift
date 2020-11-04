import Foundation

class College {
	let Name: String
	let Location: String
	let ContactNumber: String
	
	func admitStudents() {
	}
	
	func hireStaff() {
	}
	
	func placementDetails() {
	}
	
	func staffAndStudentdetails() {
	}
}

class Branch {
	let name: String
	let code: String
	var numberOfStudents: Int
	let HOD: String
	var staffCount: Int
	var lecturersCount: Int
	var subjects: [String]
	var numberOfClasses: Int
	
	func studentDetails(){
	}
	
	func facultyDetails() {
	}
	
	func textBooksAvailable() {
	}
	
	func timeTable() {
	}
	
	func listOfUpcomingEventDetails() {
		//organizer, co-ordinator,...
		//any events like fests,competitions,...
	}
	
	func examDetails() {
		//estimated time,date,subject,... of upcoming exams
	}
	
	func recentActivity() {
	}
}

class Person {
	let Name: String
	let DOB: String
	let ID: String
	let yesrOfJoining: String
	let gender: String
}

class Lecturer : Person {
	var subjectsTaken: [String]
	var timeTable: [String]
	let branch: String
	let qualification: String
	
	private func checkPaySlip() {
	}
	
	private func checkTimeTable() {
	}
	
	private func prepareQuestionPaper() {
	}
	
	private func updateStudentAttendence() {
	}
	
	private func updateStudentMarks() {
	}
	
	
}

class NonTeachingStaff: Person {
	let department: String
	let salaryAmount: Int
	
	private func checkPaySlip() {
	}
	
}

class student: Person {
	let branch: String
	var timeTable: [String]
	ver semester: Int
	
	private func checkMarks() {
	}
	
	private func checkAttendence() {
	}
	
	private func uploadAssignment() {
	}
	
	func checkTimeTable() {
	}
}
	
	
