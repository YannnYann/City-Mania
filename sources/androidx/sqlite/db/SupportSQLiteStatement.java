package androidx.sqlite.db;

/* JADX INFO: loaded from: classes.dex */
public interface SupportSQLiteStatement extends SupportSQLiteProgram {
    long executeInsert();

    int executeUpdateDelete();
}
