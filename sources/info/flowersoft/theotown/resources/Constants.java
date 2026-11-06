package info.flowersoft.theotown.resources;

import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class Constants {
    public static int MAX_TEXTURE_SIZE;
    public static int MAX_TEXTURE_UNITS;

    @NoLuaAccess
    public static boolean NO_REQUIREMENTS;
    public static final float SMOOTH_ZOOM_STEP = (float) Math.pow(2.0d, 0.125d);

    /* JADX INFO: renamed from: VERDÄCHTIG, reason: contains not printable characters */
    @NoLuaAccess
    public static int f3913VERDCHTIG = 0;

    @NoLuaAccess
    public static boolean PCAP_SUPPORTED = false;

    @NoLuaAccess
    public static long MS_PER_IDLE_DAY() {
        return Resources.getSpecificConfig("construction").optLong("idle day ms", 80000L);
    }

    @NoLuaAccess
    public Constants() {
    }
}
