package kr.or.fact.core.serializer;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

@JacksonStdImpl
public class CustomDateOnlyDateDeserializer extends StdDeserializer<Date> {

    private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    public CustomDateOnlyDateDeserializer() {
        super(LocalDate.class);
    }

    @Override
    public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {

        String text = jsonParser.getText();

        try {
            return formatter.parse(text);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}
