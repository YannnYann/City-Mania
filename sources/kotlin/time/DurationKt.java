package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DurationKt {

    /* JADX INFO: compiled from: Duration.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final long millisToNanos(long j) {
        return j * ((long) 1000000);
    }

    public static final long toDuration(int i, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, unit);
    }

    public static final long toDuration(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long jConvertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(4611686018426999999L, durationUnit, unit);
        if ((-jConvertDurationUnitOverflow) <= j && j <= jConvertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, unit, durationUnit));
        }
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        if (unit.compareTo(durationUnit2) >= 0) {
            return durationOfMillis(((long) MathKt__MathJVMKt.getSign(j)) * DurationUnitKt__DurationUnitKt.convertDurationUnitToMilliseconds(Math.abs(RangesKt___RangesKt.coerceAtLeast(j, -9223372036854775807L)), unit));
        }
        return durationOfMillis(RangesKt___RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, unit, durationUnit2), -4611686018427387903L, 4611686018427387903L));
    }

    public static final long toDuration(double d, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double dConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dConvertDurationUnit)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long jRoundToLong = MathKt__MathJVMKt.roundToLong(dConvertDurationUnit);
        if (-4611686018426999999L <= jRoundToLong && jRoundToLong < 4611686018427000000L) {
            return durationOfNanos(jRoundToLong);
        }
        return durationOfMillisNormalized(MathKt__MathJVMKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.MILLISECONDS)));
    }

    public static /* synthetic */ long parseDuration$default(String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = true;
        }
        return parseDuration(str, z, z2);
    }

    public static final long parseDuration(String str, boolean z, boolean z2) {
        int i;
        int i2;
        long defaultStringFormat;
        if (str.length() == 0) {
            if (z2) {
                throw new IllegalArgumentException("The string is empty");
            }
            return Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
        }
        char cCharAt = str.charAt(0);
        if (cCharAt != '+') {
            i = cCharAt != '-' ? 0 : 1;
            i2 = i;
        } else {
            i = 0;
            i2 = 1;
        }
        boolean z3 = i2 > 0;
        if (str.length() <= i2) {
            if (z2) {
                throw new IllegalArgumentException("No components");
            }
            return Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
        }
        if (str.charAt(i2) == 'P') {
            defaultStringFormat = parseIsoStringFormat(str, i2 + 1, z2);
        } else {
            if (z) {
                if (z2) {
                    throw new IllegalArgumentException("");
                }
                return Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
            }
            if (StringsKt__StringsJVMKt.regionMatches(str, i2, "Infinity", 0, Math.max(str.length() - i2, 8), true)) {
                defaultStringFormat = Duration.Companion.m2908getINFINITEUwyO8pc();
            } else {
                defaultStringFormat = parseDefaultStringFormat(str, i2, z3, z2);
            }
        }
        return (i == 0 || Duration.m2875equalsimpl0(defaultStringFormat, Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib())) ? defaultStringFormat : Duration.m2904unaryMinusUwyO8pc(defaultStringFormat);
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0135  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:41:0x008c
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long parseIsoStringFormat(java.lang.String r27, int r28, boolean r29) {
        /*
            Method dump skipped, instruction units count: 691
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.DurationKt.parseIsoStringFormat(java.lang.String, int, boolean):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018c, code lost:
    
        r6 = (r6 << 3) + (r6 << 1);
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0195, code lost:
    
        r1 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x019b, code lost:
    
        if (r1 >= r28.length()) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x019d, code lost:
    
        r15 = r28.charAt(r1);
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01a5, code lost:
    
        if ('0' > r15) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a9, code lost:
    
        if (r15 >= ':') goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01ab, code lost:
    
        r1 = r1 + 1;
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01b0, code lost:
    
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01b2, code lost:
    
        if (r1 == r3) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01b4, code lost:
    
        if (r1 != r5) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b7, code lost:
    
        r7 = r1;
        r2 = (((long) r2) * ((long) 1000000000)) + ((long) r6);
        r1 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01c9, code lost:
    
        if (r31 != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01d1, code lost:
    
        return kotlin.time.Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d7, code lost:
    
        throw new java.lang.IllegalArgumentException("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01d8, code lost:
    
        r23 = r2;
        r21 = r7;
        r7 = r1;
        r1 = -1;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01e3, code lost:
    
        r4 = defaultDurationUnitByShortNameOrNull(r28, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01e7, code lost:
    
        if (r4 != null) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01e9, code lost:
    
        r0 = "Unknown duration unit short name: " + r28.charAt(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01fe, code lost:
    
        if (r31 != false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0206, code lost:
    
        return kotlin.time.Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x020c, code lost:
    
        throw new java.lang.IllegalArgumentException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x020d, code lost:
    
        if (r10 == null) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0213, code lost:
    
        if (r10.compareTo(r4) > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0215, code lost:
    
        if (r31 != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x021d, code lost:
    
        return kotlin.time.Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0225, code lost:
    
        throw new java.lang.IllegalArgumentException("Unexpected order of duration components");
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0226, code lost:
    
        r6 = kotlin.time.DurationKt.WhenMappings.$EnumSwitchMapping$0[r4.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0230, code lost:
    
        if (r6 == r17) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0233, code lost:
    
        if (r6 == 2) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0235, code lost:
    
        r11 = addMillisWithoutOverflow(r11, kotlin.time.DurationUnitKt__DurationUnitKt.convertDurationUnitToMilliseconds(r8, r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x023f, code lost:
    
        r10 = 1000000;
        r24 = r11 + (r8 / r10);
        r13 = r13 + (r8 % r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x024b, code lost:
    
        r11 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x024e, code lost:
    
        r24 = r11 + (r8 / 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x025d, code lost:
    
        if (r24 > 4611686018426L) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x025f, code lost:
    
        r13 = (r8 % 1000) * 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0263, code lost:
    
        r6 = getShortNameLength(r4) + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0268, code lost:
    
        if (r23 == 0) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x026a, code lost:
    
        if (r6 >= r5) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x026c, code lost:
    
        if (r31 != false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0274, code lost:
    
        return kotlin.time.Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x027c, code lost:
    
        throw new java.lang.IllegalArgumentException("Fractional component must be last");
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0283, code lost:
    
        if (r4.compareTo(kotlin.time.DurationUnit.MINUTES) < 0) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0289, code lost:
    
        if ((r6 - r1) <= 15) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x028b, code lost:
    
        r1 = parseFractionFallback(r28, r1, r6 - getShortNameLength(r4), r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0296, code lost:
    
        r1 = fractionDigitsToNanos(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x029a, code lost:
    
        r13 = r13 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x029b, code lost:
    
        r10 = r4;
        r7 = r21;
        r2 = '0';
        r4 = 1;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02a5, code lost:
    
        if (r31 != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ad, code lost:
    
        return kotlin.time.Duration.Companion.m2909getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02b3, code lost:
    
        throw new java.lang.IllegalArgumentException("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f4, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f5, code lost:
    
        if (r1 == r6) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f7, code lost:
    
        if (r1 == r5) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ff, code lost:
    
        if (r28.charAt(r1) != '.') goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0101, code lost:
    
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0104, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0105, code lost:
    
        if (r2 == 0) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0107, code lost:
    
        r3 = r1 + 1;
        r6 = kotlin.time.FractionalParser.INSTANCE;
        r6 = java.lang.Math.min(r1 + 7, r28.length());
        r15 = r3;
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0118, code lost:
    
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011a, code lost:
    
        if (r15 >= r6) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x011c, code lost:
    
        r1 = r28.charAt(r15);
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0124, code lost:
    
        if ('0' > r1) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x012a, code lost:
    
        if (r1 >= ':') goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x012c, code lost:
    
        r21 = ((r21 << 3) + (r21 << 1)) + (r1 - '0');
        r15 = r15 + 1;
        r1 = r22;
        r2 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x013d, code lost:
    
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013f, code lost:
    
        r2 = r21;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0146, code lost:
    
        if (r6 >= (6 - (r15 - r3))) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0148, code lost:
    
        r2 = (r2 << 3) + (r2 << 1);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0151, code lost:
    
        r1 = java.lang.Math.min(r15 + 9, r28.length());
        r6 = r15;
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015e, code lost:
    
        if (r6 >= r1) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0160, code lost:
    
        r24 = r1;
        r1 = r28.charAt(r6);
        r25 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x016a, code lost:
    
        if ('0' > r1) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0170, code lost:
    
        if (r1 >= ':') goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0172, code lost:
    
        r21 = ((r21 << 3) + (r21 << 1)) + (r1 - '0');
        r6 = r25 + 1;
        r1 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0181, code lost:
    
        r25 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0183, code lost:
    
        r1 = 9 - (r25 - r15);
        r6 = r21;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x018a, code lost:
    
        if (r15 >= r1) goto L201;
     */
    /* JADX WARN: Removed duplicated region for block: B:186:0x00f4 A[EDGE_INSN: B:186:0x00f4->B:70:0x00f4 BREAK  A[LOOP:3: B:42:0x0089->B:55:0x00be], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long parseDefaultStringFormat(java.lang.String r28, int r29, boolean r30, boolean r31) {
        /*
            Method dump skipped, instruction units count: 711
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.DurationKt.parseDefaultStringFormat(java.lang.String, int, boolean, boolean):long");
    }

    public static final long addMillisWithoutOverflow(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            return (j2 == 4611686018427387903L || j2 == -4611686018427387903L) ? j2 : RangesKt___RangesKt.coerceIn(j + j2, -4611686018427387903L, 4611686018427387903L);
        }
        if ((-4611686018427387903L >= j2 || j2 >= 4611686018427387903L) && (j2 ^ j) < 0) {
            return 9223372036854759646L;
        }
        return j;
    }

    public static final long parseFractionFallback(String str, int i, int i2, DurationUnit durationUnit) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return MathKt__MathJVMKt.roundToLong(Double.parseDouble(strSubstring) * getFallbackFractionMultiplier(durationUnit));
    }

    public static final long fractionDigitsToNanos(long j, DurationUnit durationUnit) {
        return MathKt__MathJVMKt.roundToLong(j * getFractionMultiplier(durationUnit));
    }

    public static final DurationUnit defaultDurationUnitByShortNameOrNull(String str, int i) {
        char cCharAt = str.charAt(i);
        char cCharAt2 = i < StringsKt__StringsKt.getLastIndex(str) ? str.charAt(i + 1) : (char) 0;
        if (cCharAt == 'd') {
            return DurationUnit.DAYS;
        }
        if (cCharAt == 'h') {
            return DurationUnit.HOURS;
        }
        if (cCharAt == 's') {
            return DurationUnit.SECONDS;
        }
        if (cCharAt == 'u') {
            if (cCharAt2 == 's') {
                return DurationUnit.MICROSECONDS;
            }
            return null;
        }
        if (cCharAt == 'm') {
            return cCharAt2 == 's' ? DurationUnit.MILLISECONDS : DurationUnit.MINUTES;
        }
        if (cCharAt == 'n' && cCharAt2 == 's') {
            return DurationUnit.NANOSECONDS;
        }
        return null;
    }

    public static final DurationUnit isoDurationUnitByShortNameOrNull(String str, int i) {
        char cCharAt = str.charAt(i);
        if (cCharAt == 'D') {
            return DurationUnit.DAYS;
        }
        if (cCharAt == 'H') {
            return DurationUnit.HOURS;
        }
        if (cCharAt == 'M') {
            return DurationUnit.MINUTES;
        }
        if (cCharAt != 'S') {
            return null;
        }
        return DurationUnit.SECONDS;
    }

    public static final double getFractionMultiplier(DurationUnit durationUnit) {
        switch (WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()]) {
            case 1:
                return 1.0E-12d;
            case 2:
                return 1.0E-15d;
            case 3:
                return 1.0E-9d;
            case 4:
                return 1.0E-6d;
            case 5:
                return 6.0E-5d;
            case 6:
                return 0.0036d;
            case 7:
                return 0.0864d;
            default:
                throw new IllegalStateException(("Unknown unit: " + durationUnit).toString());
        }
    }

    public static final long getFallbackFractionMultiplier(DurationUnit durationUnit) {
        int i = WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        if (i == 5) {
            return 60000000000L;
        }
        if (i == 6) {
            return 3600000000000L;
        }
        if (i == 7) {
            return 86400000000000L;
        }
        throw new IllegalStateException(("Invalid unit: " + durationUnit + " for fallback fraction multiplier").toString());
    }

    public static final int getShortNameLength(DurationUnit durationUnit) {
        int i = WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? 2 : 1;
    }

    public static final long nanosToMillis(long j) {
        return j / ((long) 1000000);
    }

    public static final long durationOfNanos(long j) {
        return Duration.Companion.m2907fromRawValueUwyO8pc$kotlin_stdlib(j << 1);
    }

    public static final long durationOfMillis(long j) {
        return Duration.Companion.m2907fromRawValueUwyO8pc$kotlin_stdlib((j << 1) + 1);
    }

    public static final long durationOf(long j, int i) {
        return Duration.Companion.m2907fromRawValueUwyO8pc$kotlin_stdlib((j << 1) + ((long) i));
    }

    public static final long durationOfNanosNormalized(long j) {
        if (-4611686018426999999L <= j && j < 4611686018427000000L) {
            return durationOfNanos(j);
        }
        return durationOfMillis(nanosToMillis(j));
    }

    public static final long durationOfMillisNormalized(long j) {
        if (-4611686018426L <= j && j < 4611686018427L) {
            return durationOfNanos(millisToNanos(j));
        }
        return durationOfMillis(RangesKt___RangesKt.coerceIn(j, -4611686018427387903L, 4611686018427387903L));
    }
}
