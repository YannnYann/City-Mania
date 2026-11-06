package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public interface ArraySupplier<T> {
    public static final ArraySupplier<?> ANY = new ArraySupplier() { // from class: com.badlogic.gdx.utils.ArraySupplier$$ExternalSyntheticLambda0
        @Override // com.badlogic.gdx.utils.ArraySupplier
        public final Object get(int i) {
            return ArraySupplier.$r8$lambda$NXkhvdf7J8xaRdx8PP5azXbR1WE(i);
        }
    };

    T get(int i);

    static /* synthetic */ Object $r8$lambda$NXkhvdf7J8xaRdx8PP5azXbR1WE(int i) {
        return new Object[i];
    }

    static <T> ArraySupplier<T[]> object() {
        return (ArraySupplier<T[]>) ANY;
    }
}
