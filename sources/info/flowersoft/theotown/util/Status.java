package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import io.blueflower.stapel2d.util.Property;

/* JADX INFO: loaded from: classes4.dex */
public class Status implements Property<String> {
    public final String name;
    public String value = "";
    public long startStartMs = 0;

    public Status(String str) {
        this.name = str;
    }

    @Override // io.blueflower.stapel2d.util.Getter
    public String get() {
        return this.value;
    }

    @Override // io.blueflower.stapel2d.util.Setter
    public void set(String str) {
        done();
        this.value = str;
        this.startStartMs = TimeUtils.millis();
    }

    public void done() {
        String str = this.value;
        if (str != null && !str.isEmpty() && this.startStartMs > 0) {
            Gdx.app.log(this.name, "Task " + this.value + " took " + (TimeUtils.millis() - this.startStartMs) + "ms");
        }
        this.startStartMs = 0L;
    }
}
