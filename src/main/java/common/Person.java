package common;

public class Person {

		private String name;
		private int age;
		
		public Person() {}
		
		public Person(String name, int age) {
			super();
			this.name=name;
			this.age=age;
		}
		
		public void setName(String name) {
			this.name=name; //이름 저장
		}
		
		public String getName() {
			return name;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}
		
		// Person 객체의 빈(Bean) 생성 => DTO(Data Transfer Object)
		
		
		
}
