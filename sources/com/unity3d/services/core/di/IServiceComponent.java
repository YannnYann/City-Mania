package com.unity3d.services.core.di;

/* JADX INFO: compiled from: IServiceComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface IServiceComponent {
    IServiceProvider getServiceProvider();

    /* JADX INFO: compiled from: IServiceComponent.kt */
    public static final class DefaultImpls {
        public static IServiceProvider getServiceProvider(IServiceComponent iServiceComponent) {
            return ServiceProvider.INSTANCE;
        }
    }
}
