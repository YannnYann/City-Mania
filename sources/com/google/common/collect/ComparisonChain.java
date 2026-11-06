package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ComparisonChain {
    public static final ComparisonChain ACTIVE = new ComparisonChain() { // from class: com.google.common.collect.ComparisonChain.1
        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return 0;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(T left, T right, Comparator<T> comparator) {
            return classify(comparator.compare(left, right));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int left, int right) {
            return classify(Integer.compare(left, right));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long left, long right) {
            return classify(Long.compare(left, right));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean left, boolean right) {
            return classify(Boolean.compare(right, left));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean left, boolean right) {
            return classify(Boolean.compare(left, right));
        }

        public ComparisonChain classify(int result) {
            if (result < 0) {
                return ComparisonChain.LESS;
            }
            return result > 0 ? ComparisonChain.GREATER : ComparisonChain.ACTIVE;
        }
    };
    public static final ComparisonChain LESS = new InactiveComparisonChain(-1);
    public static final ComparisonChain GREATER = new InactiveComparisonChain(1);

    public abstract ComparisonChain compare(int left, int right);

    public abstract ComparisonChain compare(long left, long right);

    public abstract <T> ComparisonChain compare(T left, T right, Comparator<T> comparator);

    public abstract ComparisonChain compareFalseFirst(boolean left, boolean right);

    public abstract ComparisonChain compareTrueFirst(boolean left, boolean right);

    public abstract int result();

    public ComparisonChain() {
    }

    public static ComparisonChain start() {
        return ACTIVE;
    }

    public static final class InactiveComparisonChain extends ComparisonChain {
        public final int result;

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int left, int right) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long left, long right) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(T left, T right, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean left, boolean right) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean left, boolean right) {
            return this;
        }

        public InactiveComparisonChain(int result) {
            super();
            this.result = result;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return this.result;
        }
    }
}
