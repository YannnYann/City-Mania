package info.flowersoft.theotown.android;

import android.content.SharedPreferences;
import com.badlogic.gdx.Preferences;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ImmediateAndroidPreferences implements Preferences {
    public SharedPreferences.Editor editor;
    public SharedPreferences sharedPrefs;

    public ImmediateAndroidPreferences(SharedPreferences sharedPreferences) {
        this.sharedPrefs = sharedPreferences;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putBoolean(String str, boolean z) {
        edit();
        this.editor.putBoolean(str, z);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putInteger(String str, int i) {
        edit();
        this.editor.putInt(str, i);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putLong(String str, long j) {
        edit();
        this.editor.putLong(str, j);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putString(String str, String str2) {
        edit();
        this.editor.putString(str, str2);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public boolean getBoolean(String str, boolean z) {
        return this.sharedPrefs.getBoolean(str, z);
    }

    @Override // com.badlogic.gdx.Preferences
    public int getInteger(String str, int i) {
        return this.sharedPrefs.getInt(str, i);
    }

    @Override // com.badlogic.gdx.Preferences
    public long getLong(String str, long j) {
        return this.sharedPrefs.getLong(str, j);
    }

    @Override // com.badlogic.gdx.Preferences
    public String getString(String str, String str2) {
        return this.sharedPrefs.getString(str, str2);
    }

    @Override // com.badlogic.gdx.Preferences
    public Map<String, ?> get() {
        return this.sharedPrefs.getAll();
    }

    @Override // com.badlogic.gdx.Preferences
    public boolean contains(String str) {
        return this.sharedPrefs.contains(str);
    }

    @Override // com.badlogic.gdx.Preferences
    public void clear() {
        edit();
        this.editor.clear();
    }

    @Override // com.badlogic.gdx.Preferences
    public void flush() {
        SharedPreferences.Editor editor = this.editor;
        if (editor != null) {
            editor.commit();
            this.editor = null;
        }
    }

    private void edit() {
        if (this.editor == null) {
            this.editor = this.sharedPrefs.edit();
        }
    }
}
