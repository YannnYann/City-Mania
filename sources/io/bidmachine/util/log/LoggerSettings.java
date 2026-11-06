package io.bidmachine.util.log;

/* JADX INFO: compiled from: LoggerSettings.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LoggerSettings {
    public static final LoggerSettings INSTANCE = new LoggerSettings();
    public static final DefaultLoggerInstance logger = new DefaultLoggerInstance("BidMachineUtil");

    public final DefaultLoggerInstance getLogger$bidmachine_android_sdk_bd_3_8_0() {
        return logger;
    }

    public static final void setEnable(boolean z) {
        logger.setEnabled(z);
    }
}
