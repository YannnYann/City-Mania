package androidx.work.impl.model;

/* JADX INFO: loaded from: classes.dex */
public interface PreferenceDao {
    Long getLongValue(String key);

    void insertPreference(Preference preference);
}
