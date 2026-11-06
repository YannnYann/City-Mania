package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class Functions {
    public static <E> Function<Object, E> constant(E value) {
        return new ConstantFunction(value);
    }

    public static class ConstantFunction<E> implements Function<Object, E>, Serializable {
        public final E value;

        public ConstantFunction(E value) {
            this.value = value;
        }

        @Override // com.google.common.base.Function
        public E apply(Object from) {
            return this.value;
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof ConstantFunction) {
                return Objects.equal(this.value, ((ConstantFunction) obj).value);
            }
            return false;
        }

        public int hashCode() {
            E e = this.value;
            if (e == null) {
                return 0;
            }
            return e.hashCode();
        }

        public String toString() {
            return "Functions.constant(" + this.value + ")";
        }
    }
}
