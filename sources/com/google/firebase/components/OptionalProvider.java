package com.google.firebase.components;

import com.google.firebase.inject.Deferred$DeferredHandler;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public class OptionalProvider<T> implements Provider<T> {
    public volatile Provider<T> delegate;
    public Deferred$DeferredHandler<T> handler;
    public static final Deferred$DeferredHandler<Object> NOOP_HANDLER = new Deferred$DeferredHandler() { // from class: com.google.firebase.components.OptionalProvider$$ExternalSyntheticLambda0
        @Override // com.google.firebase.inject.Deferred$DeferredHandler
        public final void handle(Provider provider) {
            OptionalProvider.$r8$lambda$ytZhMnMbf78qjlsbWoYlWtBGovI(provider);
        }
    };
    public static final Provider<Object> EMPTY_PROVIDER = new Provider() { // from class: com.google.firebase.components.OptionalProvider$$ExternalSyntheticLambda1
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return OptionalProvider.$r8$lambda$42DdGLxm8XDmnYxP5XsnqhLiudg();
        }
    };

    public static /* synthetic */ void $r8$lambda$ytZhMnMbf78qjlsbWoYlWtBGovI(Provider provider) {
    }

    public static /* synthetic */ Object $r8$lambda$42DdGLxm8XDmnYxP5XsnqhLiudg() {
        return null;
    }

    public OptionalProvider(Deferred$DeferredHandler<T> deferred$DeferredHandler, Provider<T> provider) {
        this.handler = deferred$DeferredHandler;
        this.delegate = provider;
    }

    public static <T> OptionalProvider<T> empty() {
        return new OptionalProvider<>(NOOP_HANDLER, EMPTY_PROVIDER);
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        return this.delegate.get();
    }

    public void set(Provider<T> provider) {
        Deferred$DeferredHandler<T> deferred$DeferredHandler;
        if (this.delegate != EMPTY_PROVIDER) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            deferred$DeferredHandler = this.handler;
            this.handler = null;
            this.delegate = provider;
        }
        deferred$DeferredHandler.handle(provider);
    }
}
