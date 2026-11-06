package org.chromium.net.telemetry;

import android.util.StatsEvent;
import android.util.StatsLog;

/* JADX INFO: loaded from: classes5.dex */
public final class CronetStatsLog {
    public static void write(int code, long arg1, int arg2, int arg3, int arg4, int arg5, int arg6, boolean arg7, boolean arg8, int arg9, boolean arg10, boolean arg11, boolean arg12, int arg13, String arg14, int arg15, int arg16, int arg17, int arg18, int arg19, int arg20, int arg21, int arg22, int arg23, int arg24, int arg25, int arg26, int arg27, int arg28, int arg29, int arg30, int arg31, int arg32, int arg33, int arg34, int arg35, long arg36, int arg37) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(code);
        builderNewBuilder.writeLong(arg1);
        builderNewBuilder.writeInt(arg2);
        builderNewBuilder.writeInt(arg3);
        builderNewBuilder.writeInt(arg4);
        builderNewBuilder.writeInt(arg5);
        builderNewBuilder.writeInt(arg6);
        builderNewBuilder.writeBoolean(arg7);
        builderNewBuilder.writeBoolean(arg8);
        builderNewBuilder.writeInt(arg9);
        builderNewBuilder.writeBoolean(arg10);
        builderNewBuilder.writeBoolean(arg11);
        builderNewBuilder.writeBoolean(arg12);
        builderNewBuilder.writeInt(arg13);
        builderNewBuilder.writeString(arg14);
        builderNewBuilder.writeInt(arg15);
        builderNewBuilder.writeInt(arg16);
        builderNewBuilder.writeInt(arg17);
        builderNewBuilder.writeInt(arg18);
        builderNewBuilder.writeInt(arg19);
        builderNewBuilder.writeInt(arg20);
        builderNewBuilder.writeInt(arg21);
        builderNewBuilder.writeInt(arg22);
        builderNewBuilder.writeInt(arg23);
        builderNewBuilder.writeInt(arg24);
        builderNewBuilder.writeInt(arg25);
        builderNewBuilder.writeInt(arg26);
        builderNewBuilder.writeInt(arg27);
        builderNewBuilder.writeInt(arg28);
        builderNewBuilder.writeInt(arg29);
        builderNewBuilder.writeInt(arg30);
        builderNewBuilder.writeInt(arg31);
        builderNewBuilder.writeInt(arg32);
        builderNewBuilder.writeInt(arg33);
        builderNewBuilder.writeInt(arg34);
        builderNewBuilder.writeInt(arg35);
        builderNewBuilder.writeLong(arg36);
        builderNewBuilder.writeInt(arg37);
        if (703 == code) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }

    public static void write(int code, long arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11, int arg12, int arg13, int arg14) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(code);
        builderNewBuilder.writeLong(arg1);
        builderNewBuilder.writeInt(arg2);
        builderNewBuilder.writeInt(arg3);
        builderNewBuilder.writeInt(arg4);
        builderNewBuilder.writeInt(arg5);
        builderNewBuilder.writeInt(arg6);
        builderNewBuilder.writeInt(arg7);
        builderNewBuilder.writeInt(arg8);
        builderNewBuilder.writeInt(arg9);
        builderNewBuilder.writeInt(arg10);
        builderNewBuilder.writeInt(arg11);
        builderNewBuilder.writeInt(arg12);
        builderNewBuilder.writeInt(arg13);
        builderNewBuilder.writeInt(arg14);
        if (762 == code) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }

    public static void write(int code, long arg1, int arg2, int arg3, int arg4, int arg5, int arg6, long arg7, int arg8, int arg9, boolean arg10, boolean arg11, int arg12, int arg13, int arg14, long arg15, long arg16, int arg17, int arg18, int arg19, int arg20, int arg21, int arg22, int arg23, int arg24, int arg25, int arg26, String arg27, int arg28, long arg29, long arg30, long arg31, long arg32) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(code);
        builderNewBuilder.writeLong(arg1);
        builderNewBuilder.writeInt(arg2);
        builderNewBuilder.writeInt(arg3);
        builderNewBuilder.writeInt(arg4);
        builderNewBuilder.writeInt(arg5);
        builderNewBuilder.writeInt(arg6);
        builderNewBuilder.writeLong(arg7);
        builderNewBuilder.writeInt(arg8);
        builderNewBuilder.writeInt(arg9);
        builderNewBuilder.writeBoolean(arg10);
        builderNewBuilder.writeBoolean(arg11);
        builderNewBuilder.writeInt(arg12);
        builderNewBuilder.writeInt(arg13);
        builderNewBuilder.writeInt(arg14);
        builderNewBuilder.writeLong(arg15);
        builderNewBuilder.writeLong(arg16);
        builderNewBuilder.writeInt(arg17);
        builderNewBuilder.writeInt(arg18);
        builderNewBuilder.writeInt(arg19);
        builderNewBuilder.writeInt(arg20);
        builderNewBuilder.writeInt(arg21);
        if (704 == code) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.writeInt(arg22);
        builderNewBuilder.writeInt(arg23);
        builderNewBuilder.writeInt(arg24);
        builderNewBuilder.writeInt(arg25);
        builderNewBuilder.writeInt(arg26);
        builderNewBuilder.writeString(arg27);
        builderNewBuilder.writeInt(arg28);
        builderNewBuilder.writeLong(arg29);
        builderNewBuilder.writeLong(arg30);
        builderNewBuilder.writeLong(arg31);
        builderNewBuilder.writeLong(arg32);
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }
}
