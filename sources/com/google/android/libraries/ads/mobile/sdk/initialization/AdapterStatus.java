package com.google.android.libraries.ads.mobile.sdk.initialization;

import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterStatus {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InitializationState {
        public static final InitializationState COMPLETE;
        public static final InitializationState FAILED;
        public static final InitializationState INITIALIZING;
        public static final InitializationState NOT_STARTED;
        public static final InitializationState TIMED_OUT;
        public static final /* synthetic */ InitializationState[] b;
        public final int a;

        static {
            InitializationState initializationState = new InitializationState("NOT_STARTED", 0, 0);
            NOT_STARTED = initializationState;
            InitializationState initializationState2 = new InitializationState("INITIALIZING", 1, 1);
            INITIALIZING = initializationState2;
            InitializationState initializationState3 = new InitializationState("COMPLETE", 2, 2);
            COMPLETE = initializationState3;
            InitializationState initializationState4 = new InitializationState("TIMED_OUT", 3, 3);
            TIMED_OUT = initializationState4;
            InitializationState initializationState5 = new InitializationState("FAILED", 4, 4);
            FAILED = initializationState5;
            InitializationState[] initializationStateArr = {initializationState, initializationState2, initializationState3, initializationState4, initializationState5};
            b = initializationStateArr;
            EnumEntriesKt.enumEntries(initializationStateArr);
        }

        public InitializationState(String str, int i, int i2) {
            this.a = i2;
        }

        public static InitializationState[] values() {
            return (InitializationState[]) b.clone();
        }
    }

    String getDescription();

    InitializationState getInitializationState();

    int getLatency();
}
