package com.badlogic.gdx.pay;

/* JADX INFO: loaded from: classes.dex */
public final class FreeTrialPeriod {
    public final int numberOfUnits;
    public final PeriodUnit unit;

    public enum PeriodUnit {
        DAY,
        MONTH,
        WEEK,
        YEAR;

        public static PeriodUnit parse(char c) {
            if (c == 'D') {
                return DAY;
            }
            if (c == 'M') {
                return MONTH;
            }
            if (c == 'W') {
                return WEEK;
            }
            if (c == 'Y') {
                return YEAR;
            }
            throw new IllegalArgumentException("Character not mapped to PeriodUnit: " + c);
        }
    }

    public FreeTrialPeriod(int i, PeriodUnit periodUnit) {
        this.numberOfUnits = i;
        this.unit = periodUnit;
    }

    public int getNumberOfUnits() {
        return this.numberOfUnits;
    }

    public PeriodUnit getUnit() {
        return this.unit;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && FreeTrialPeriod.class == obj.getClass()) {
            FreeTrialPeriod freeTrialPeriod = (FreeTrialPeriod) obj;
            if (this.numberOfUnits == freeTrialPeriod.numberOfUnits && this.unit == freeTrialPeriod.unit) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.numberOfUnits * 31) + this.unit.hashCode();
    }
}
