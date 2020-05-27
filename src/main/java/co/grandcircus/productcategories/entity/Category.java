package co.grandcircus.productcategories.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String cssColor;

	public Category() {
		super();
	}

	public Category(String name, String cssColor) {
		super();
		this.name = name;
		this.cssColor = cssColor;
	}

	public Category(Long id, String name, String cssColor) {
		super();
		this.id = id;
		this.name = name;
		this.cssColor = cssColor;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCssColor() {
		return cssColor;
	}

	public void setCssColor(String cssColor) {
		this.cssColor = cssColor;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", cssColor="
				+ cssColor + "]";
	}

}
