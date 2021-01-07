package wsb.jsp.repositories;

import org.springframework.stereotype.Repository;
import wsb.jsp.models.Country;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

@Repository
public class CountryRepository {

    private static final List<Country> countries = new LinkedList<>(Arrays.asList(
            new Country("Polska", "Warszawa", 38386000, "PLN"),
            new Country("Niemcy", "Berlin", 83019200, "EUR"),
            new Country("Chorwacja", "Zagrzeb", 4149000, "HRK"),
            new Country("Rumunia", "Bukareszt", 19250617, "RON"),
            new Country("Japonia", "Tokio", 125396901, "JPY"),
            new Country("Meksyk", "Meksyk", 124574795, "MXN"),
            new Country("Nowa Zelandia", "Wellington", 4510327, "NZD"),
            new Country("Kenia", "Nairobi", 47654296, "KES")
    ));


    public List<Country> findAll() {
        return countries;
    }

    public List<Country> findAllWithPopulationGreaterThan(Integer minPopulation) {
        return countries.stream().filter(c -> c.getPopulation() > minPopulation).collect(Collectors.toList());
    }

}
