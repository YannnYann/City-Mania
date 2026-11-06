package j$.time.temporal;

/* JADX INFO: loaded from: classes2.dex */
public enum a implements s {
    NANO_OF_SECOND("NanoOfSecond", x.j(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", x.j(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", x.j(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", x.j(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", x.j(0, 999)),
    MILLI_OF_DAY("MilliOfDay", x.j(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", x.j(0, 59), 0),
    SECOND_OF_DAY("SecondOfDay", x.j(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", x.j(0, 59), 0),
    MINUTE_OF_DAY("MinuteOfDay", x.j(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", x.j(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", x.j(1, 12)),
    HOUR_OF_DAY("HourOfDay", x.j(0, 23), 0),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", x.j(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", x.j(0, 1), 0),
    DAY_OF_WEEK("DayOfWeek", x.j(1, 7), 0),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", x.j(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", x.j(1, 7)),
    DAY_OF_MONTH("DayOfMonth", x.k(28, 31), 0),
    DAY_OF_YEAR("DayOfYear", x.k(365, 366)),
    EPOCH_DAY("EpochDay", x.j(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", x.k(4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", x.j(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", x.j(1, 12), 0),
    PROLEPTIC_MONTH("ProlepticMonth", x.j(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", x.k(999999999, 1000000000)),
    YEAR("Year", x.j(-999999999, 999999999), 0),
    ERA("Era", x.j(0, 1), 0),
    INSTANT_SECONDS("InstantSeconds", x.j(Long.MIN_VALUE, Long.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", x.j(-64800, 64800));

    private final String a;
    private final x b;

    static {
        b bVar = b.NANOS;
    }

    a(String str, x xVar) {
        this.a = str;
        this.b = xVar;
    }

    a(String str, x xVar, int i) {
        this.a = str;
        this.b = xVar;
    }

    @Override // j$.time.temporal.s
    public final x C() {
        return this.b;
    }

    @Override // j$.time.temporal.s
    public final boolean T() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    public final boolean b0() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    public final void a0(long j) {
        this.b.b(j, this);
    }

    public final int Z(long j) {
        return this.b.a(j, this);
    }

    @Override // j$.time.temporal.s
    public final boolean W(n nVar) {
        return nVar.f(this);
    }

    @Override // j$.time.temporal.s
    public final x J(n nVar) {
        return nVar.l(this);
    }

    @Override // j$.time.temporal.s
    public final long r(n nVar) {
        return nVar.g(this);
    }

    @Override // j$.time.temporal.s
    public final m p(m mVar, long j) {
        return mVar.b(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
