package org.chromium.net.httpflags;

import com.google.protobuf.ByteString;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.httpflags.FlagValue;

/* JADX INFO: loaded from: classes5.dex */
public final class ResolvedFlags {
    public final Map<String, Value> mFlags;

    public static final class Value {
        public final Object mValue;

        public enum Type {
            BOOL,
            INT,
            FLOAT,
            STRING,
            BYTES
        }

        public static Value resolve(FlagValue flagValue, String appId, int[] cronetVersion, boolean isTelemetryEnabled) {
            for (FlagValue.ConstrainedValue constrainedValue : flagValue.getConstrainedValuesList()) {
                if (isTelemetryEnabled || constrainedValue.getApplyEvenIfCronetTelemetryDisabled()) {
                    if (!constrainedValue.hasAppId() || constrainedValue.getAppId().equals(appId)) {
                        if (!constrainedValue.hasMinVersion() || matchesVersion(cronetVersion, ResolvedFlags.parseVersionString(constrainedValue.getMinVersion()))) {
                            return fromConstrainedValue(constrainedValue);
                        }
                    }
                }
            }
            return null;
        }

        public static boolean matchesVersion(int[] cronetVersion, int[] minVersion) {
            int i = 0;
            while (i < Math.max(cronetVersion.length, minVersion.length)) {
                int i2 = i < cronetVersion.length ? cronetVersion[i] : 0;
                int i3 = i < minVersion.length ? minVersion[i] : 0;
                if (i2 > i3) {
                    return true;
                }
                if (i2 < i3) {
                    return false;
                }
                i++;
            }
            return true;
        }

        public static Value fromConstrainedValue(FlagValue.ConstrainedValue constrainedValue) {
            FlagValue.ConstrainedValue.ValueCase valueCase = constrainedValue.getValueCase();
            switch (AnonymousClass1.$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[valueCase.ordinal()]) {
                case 1:
                    return new Value(constrainedValue.getBoolValue());
                case 2:
                    return new Value(constrainedValue.getIntValue());
                case 3:
                    return new Value(constrainedValue.getFloatValue());
                case 4:
                    return new Value(constrainedValue.getStringValue());
                case 5:
                    return new Value(constrainedValue.getBytesValue());
                case 6:
                    return null;
                default:
                    throw new IllegalArgumentException("Flag value uses unknown value type " + String.valueOf(valueCase));
            }
        }

        public Value(boolean value) {
            this.mValue = Boolean.valueOf(value);
        }

        public Value(long value) {
            this.mValue = Long.valueOf(value);
        }

        public Value(float value) {
            this.mValue = Float.valueOf(value);
        }

        public Value(String value) {
            this.mValue = value;
        }

        public Value(ByteString value) {
            this.mValue = value;
        }

        public Type getType() {
            Object obj = this.mValue;
            if (obj instanceof Boolean) {
                return Type.BOOL;
            }
            if (obj instanceof Long) {
                return Type.INT;
            }
            if (obj instanceof Float) {
                return Type.FLOAT;
            }
            if (obj instanceof String) {
                return Type.STRING;
            }
            if (obj instanceof ByteString) {
                return Type.BYTES;
            }
            throw new IllegalStateException("Unexpected flag value type: " + this.mValue.getClass().getName());
        }

        public final void checkType(Type requestedType) {
            Type type = getType();
            if (requestedType == type) {
                return;
            }
            throw new IllegalStateException("Attempted to access flag value as " + String.valueOf(requestedType) + ", but actual type is " + String.valueOf(type));
        }

        public boolean getBoolValue() {
            checkType(Type.BOOL);
            return ((Boolean) this.mValue).booleanValue();
        }

        public String getStringValue() {
            checkType(Type.STRING);
            return (String) this.mValue;
        }

        public String toString() {
            return this.mValue.toString();
        }
    }

    /* JADX INFO: renamed from: org.chromium.net.httpflags.ResolvedFlags$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase;

        static {
            int[] iArr = new int[FlagValue.ConstrainedValue.ValueCase.values().length];
            $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase = iArr;
            try {
                iArr[FlagValue.ConstrainedValue.ValueCase.BOOL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[FlagValue.ConstrainedValue.ValueCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[FlagValue.ConstrainedValue.ValueCase.FLOAT_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[FlagValue.ConstrainedValue.ValueCase.STRING_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[FlagValue.ConstrainedValue.ValueCase.BYTES_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase[FlagValue.ConstrainedValue.ValueCase.VALUE_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static ResolvedFlags resolve(Flags flags, String appId, String cronetVersion, boolean isTelemetryEnabled) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet ResolvedFlags#resolve");
        try {
            int[] versionString = parseVersionString(cronetVersion);
            HashMap map = new HashMap();
            for (Map.Entry<String, FlagValue> entry : flags.getFlagsMap().entrySet()) {
                try {
                    Value valueResolve = Value.resolve(entry.getValue(), appId, versionString, isTelemetryEnabled);
                    if (valueResolve != null) {
                        map.put(entry.getKey(), valueResolve);
                    }
                } catch (RuntimeException e) {
                    throw new IllegalArgumentException("Unable to resolve HTTP flag `" + entry.getKey() + "`", e);
                }
            }
            ResolvedFlags resolvedFlags = new ResolvedFlags(map);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
            return resolvedFlags;
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public ResolvedFlags(Map<String, Value> flags) {
        this.mFlags = flags;
    }

    public Map<String, Value> flags() {
        return Collections.unmodifiableMap(this.mFlags);
    }

    public static int[] parseVersionString(String versionString) {
        try {
            if (versionString.isEmpty()) {
                throw new IllegalArgumentException("Version string is empty");
            }
            StringTokenizer stringTokenizer = new StringTokenizer(versionString, ".");
            int iCountTokens = stringTokenizer.countTokens();
            int[] iArr = new int[iCountTokens];
            for (int i = 0; i < iCountTokens; i++) {
                iArr[i] = Integer.parseInt(stringTokenizer.nextToken());
            }
            return iArr;
        } catch (RuntimeException e) {
            throw new IllegalArgumentException("Unable to parse HTTP flags version string: `" + versionString + "`", e);
        }
    }
}
