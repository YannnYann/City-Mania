package vm2.server;

import java.io.InputStream;
import java.io.Reader;

/* JADX INFO: loaded from: classes6.dex */
public interface Launcher {
    Object[] launch(InputStream inputStream, Object[] objArr);

    Object[] launch(Reader reader, Object[] objArr);

    Object[] launch(String str, Object[] objArr);
}
