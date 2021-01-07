package wsb.jsp.models;

public class Country {

    String name;
    String capital;
    Integer population;
    String currency;

    public Country(String name, String capital, Integer population, String currency) {
        this.name = name;
        this.capital = capital;
        this.population = population;
        this.currency = currency;
    }

    public String getName() {
        return name;
    }

    public String getCapital() {
        return capital;
    }

    public Integer getPopulation() {
        return population;
    }

    public String getCurrency() {
        return currency;
    }
}
