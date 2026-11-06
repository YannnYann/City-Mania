package com.google.firebase.events;

/* JADX INFO: loaded from: classes3.dex */
public class Event<T> {
    public final T payload;
    public final Class<T> type;

    public Class<T> getType() {
        return this.type;
    }

    public T getPayload() {
        return this.payload;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.type, this.payload);
    }
}
