package info.flowersoft.theotown.resources;

/* JADX INFO: loaded from: classes4.dex */
public class TimeSpan {
    public String localization;
    public int ms;

    public TimeSpan(int i) {
        this.ms = i;
    }

    public void setMs(int i) {
        if (this.ms != i) {
            this.ms = i;
            this.localization = null;
        }
    }

    public String getLocalization() {
        if (this.localization == null) {
            this.localization = localize(this.ms);
        }
        return this.localization;
    }

    public static String localize(long j) {
        String str = j >= 0 ? "" : "-";
        long jAbs = Math.abs(j) / 1000;
        long j2 = jAbs / 60;
        long j3 = j2 / 60;
        long j4 = j3 / 24;
        int i = (int) (j4 / 365);
        int i2 = (int) (j4 % 365);
        int i3 = (int) (j3 % 24);
        int i4 = (int) (j2 % 60);
        int i5 = (int) (jAbs % 60);
        if (i > 0) {
            return str + i + "y " + i2 + "d";
        }
        if (i2 > 0) {
            return str + i2 + "d " + i3 + "h";
        }
        if (i3 > 0) {
            return str + i3 + "h " + i4 + "m";
        }
        if (i4 > 0) {
            return str + i4 + "m " + i5 + "s";
        }
        return str + i5 + "s";
    }
}
