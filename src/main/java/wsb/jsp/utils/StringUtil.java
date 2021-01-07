package wsb.jsp.utils;

public class StringUtil {

    public static String makePokemon(String text) {
        StringBuilder result = new StringBuilder();
        String[] stringArray = text.split("");
        for (int i = 0; i < stringArray.length; i++) {
            result.append(i % 2 == 0 ? stringArray[i].toLowerCase() : stringArray[i].toUpperCase());
        }
        return result.toString();
    }
}
