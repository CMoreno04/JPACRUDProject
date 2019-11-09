package com.skilldistillery.jpasoccerplayers.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;
	
	@Column(name="age")
	private Integer age;
	
	@Column(name="photo")
	private String photo;
	
	@Column(name="nationality")
	private String nationality;
	
	@Column(name="flag")
	private String flag;
	
	@Column(name="overall")
	private Integer overall;
	
	@Column(name="club")
	private String club;
	
	@Column(name="club_logo")
	private String clubLogo;
	
	@Column(name="value")
	private Integer marketValue;
	
	@Column(name="nation_wiki")
	private String nationWiki;
	
	@Column(name="club_wiki")
	private String clubWiki;

	
	public Player() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Player(int id, String firstName, String lastName, Integer age, String photo, String nationality, String flag,
			Integer overall, String club, String clubLogo, Integer marketValue, String nationWiki, String clubWiki) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.photo = photo;
		this.nationality = nationality;
		this.flag = flag;
		this.overall = overall;
		this.club = club;
		this.clubLogo = clubLogo;
		this.marketValue = marketValue;
		this.nationWiki = nationWiki;
		this.clubWiki = clubWiki;
	}


	public Player(String firstName, String lastName, Integer age, String nationality, Integer overall, String club,
			Integer marketValue) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.nationality = nationality;
		this.overall = overall;
		this.club = club;
		this.marketValue = marketValue;
	}


	public int getId() {
		return id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public String getNationality() {
		return nationality;
	}


	public void setNationality(String nationality) {
		this.nationality = nationality;
	}


	public String getFlag() {
		return flag;
	}


	public void setFlag(String flag) {
		this.flag = flag;
	}


	public Integer getOverall() {
		return overall;
	}


	public void setOverall(Integer overall) {
		this.overall = overall;
	}


	public String getClub() {
		return club;
	}


	public void setClub(String club) {
		this.club = club;
	}


	public String getClubLogo() {
		return clubLogo;
	}


	public void setClubLogo(String clubLogo) {
		this.clubLogo = clubLogo;
	}


	public Integer getMarketValue() {
		return marketValue;
	}


	public void setMarketValue(Integer marketValue) {
		this.marketValue = marketValue;
	}


	public String getNationWiki() {
		return nationWiki;
	}


	public void setNationWiki(String nationWiki) {
		this.nationWiki = nationWiki;
	}


	public String getClubWiki() {
		return clubWiki;
	}


	public void setClubWiki(String clubWiki) {
		this.clubWiki = clubWiki;
	}


	@Override
	public String toString() {
		return "Player [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", photo="
				+ photo + ", nationality=" + nationality + ", flag=" + flag + ", overall=" + overall + ", club=" + club
				+ ", clubLogo=" + clubLogo + ", marketValue=" + marketValue + ", nationWiki=" + nationWiki
				+ ", clubWiki=" + clubWiki + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((age == null) ? 0 : age.hashCode());
		result = prime * result + ((club == null) ? 0 : club.hashCode());
		result = prime * result + ((clubLogo == null) ? 0 : clubLogo.hashCode());
		result = prime * result + ((clubWiki == null) ? 0 : clubWiki.hashCode());
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((flag == null) ? 0 : flag.hashCode());
		result = prime * result + id;
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((marketValue == null) ? 0 : marketValue.hashCode());
		result = prime * result + ((nationWiki == null) ? 0 : nationWiki.hashCode());
		result = prime * result + ((nationality == null) ? 0 : nationality.hashCode());
		result = prime * result + ((overall == null) ? 0 : overall.hashCode());
		result = prime * result + ((photo == null) ? 0 : photo.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Player other = (Player) obj;
		if (age == null) {
			if (other.age != null)
				return false;
		} else if (!age.equals(other.age))
			return false;
		if (club == null) {
			if (other.club != null)
				return false;
		} else if (!club.equals(other.club))
			return false;
		if (clubLogo == null) {
			if (other.clubLogo != null)
				return false;
		} else if (!clubLogo.equals(other.clubLogo))
			return false;
		if (clubWiki == null) {
			if (other.clubWiki != null)
				return false;
		} else if (!clubWiki.equals(other.clubWiki))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (flag == null) {
			if (other.flag != null)
				return false;
		} else if (!flag.equals(other.flag))
			return false;
		if (id != other.id)
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (marketValue == null) {
			if (other.marketValue != null)
				return false;
		} else if (!marketValue.equals(other.marketValue))
			return false;
		if (nationWiki == null) {
			if (other.nationWiki != null)
				return false;
		} else if (!nationWiki.equals(other.nationWiki))
			return false;
		if (nationality == null) {
			if (other.nationality != null)
				return false;
		} else if (!nationality.equals(other.nationality))
			return false;
		if (overall == null) {
			if (other.overall != null)
				return false;
		} else if (!overall.equals(other.overall))
			return false;
		if (photo == null) {
			if (other.photo != null)
				return false;
		} else if (!photo.equals(other.photo))
			return false;
		return true;
	}


	
		
	
}
