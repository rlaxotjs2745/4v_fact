package kr.or.fact.core.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@JacksonStdImpl
public class CustomDateOnlyDateSerializer extends StdSerializer<Date> {

    private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    public CustomDateOnlyDateSerializer() {
        super(Date.class);
    }

    public CustomDateOnlyDateSerializer(Class<?> handledType) {
        super(handledType, false);
    }

    @Override
    public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeString(formatter.format(date));
    }
}
