package kotlinx.coroutines.channels;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BufferOverflow.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BufferOverflow {
    public static final /* synthetic */ EnumEntries $ENTRIES;
    public static final /* synthetic */ BufferOverflow[] $VALUES;
    public static final BufferOverflow SUSPEND = new BufferOverflow("SUSPEND", 0);
    public static final BufferOverflow DROP_OLDEST = new BufferOverflow("DROP_OLDEST", 1);
    public static final BufferOverflow DROP_LATEST = new BufferOverflow("DROP_LATEST", 2);

    public static final /* synthetic */ BufferOverflow[] $values() {
        return new BufferOverflow[]{SUSPEND, DROP_OLDEST, DROP_LATEST};
    }

    public BufferOverflow(String str, int i) {
    }

    static {
        BufferOverflow[] bufferOverflowArr$values = $values();
        $VALUES = bufferOverflowArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bufferOverflowArr$values);
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) $VALUES.clone();
    }
}
