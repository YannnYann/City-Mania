package ads_mobile_sdk;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public interface tw1 extends uw1 {

    public interface a extends uw1, Cloneable {
        tw1 a();
    }

    void a(oy oyVar) throws IOException;

    aj2<? extends tw1> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    void writeTo(OutputStream outputStream) throws IOException;
}
