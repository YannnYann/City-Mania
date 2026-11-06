package io.bidmachine.utils;

/* JADX INFO: loaded from: classes5.dex */
public enum Gender {
    Female("F", 1),
    Male("M", 2),
    Omitted("O", 0);

    public final String ortbValue;
    public final int serverValue;

    Gender(String str, int i) {
        this.ortbValue = str;
        this.serverValue = i;
    }

    public String getOrtbValue() {
        return this.ortbValue;
    }
}
