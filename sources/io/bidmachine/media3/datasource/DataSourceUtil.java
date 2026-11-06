package io.bidmachine.media3.datasource;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class DataSourceUtil {
    public static void closeQuietly(DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }
}
