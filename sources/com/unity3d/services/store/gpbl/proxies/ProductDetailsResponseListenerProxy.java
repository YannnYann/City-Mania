package com.unity3d.services.store.gpbl.proxies;

import com.unity3d.services.core.reflection.GenericListenerProxy;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.v8.QueryProductDetailsResultsBridge;
import com.unity3d.services.store.gpbl.listeners.ProductDetailsResponseListener;
import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductDetailsResponseListenerProxy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ProductDetailsResponseListenerProxy extends GenericListenerProxy {
    public static final Companion Companion = new Companion(null);
    public static final String onProductDetailsResponseMethodName = "onProductDetailsResponse";
    private final ProductDetailsResponseListener productDetailsResponseListener;

    public ProductDetailsResponseListenerProxy(ProductDetailsResponseListener productDetailsResponseListener) {
        this.productDetailsResponseListener = productDetailsResponseListener;
    }

    public final ProductDetailsResponseListener getProductDetailsResponseListener() {
        return this.productDetailsResponseListener;
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy
    public Class<?> getProxyClass() {
        return Companion.getProxyListenerClass();
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] objArr) {
        Object obj;
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method.getName(), onProductDetailsResponseMethodName)) {
            return super.invoke(proxy, method, objArr);
        }
        if (objArr != null && (obj = objArr[1]) != null) {
            onPurchasesUpdated(objArr[0], obj);
        }
        return null;
    }

    private final void onPurchasesUpdated(Object obj, Object obj2) {
        QueryProductDetailsResultsBridge queryProductDetailsResultsBridge = new QueryProductDetailsResultsBridge(obj2);
        ProductDetailsResponseListener productDetailsResponseListener = this.productDetailsResponseListener;
        if (productDetailsResponseListener != null) {
            productDetailsResponseListener.onProductDetailsResponse(new BillingResultBridge(obj), queryProductDetailsResultsBridge);
        }
    }

    /* JADX INFO: compiled from: ProductDetailsResponseListenerProxy.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Class<?> getProxyListenerClass() throws ClassNotFoundException {
            Intrinsics.checkNotNullExpressionValue(com.android.billingclient.api.ProductDetailsResponseListener.class, "forName(...)");
            return com.android.billingclient.api.ProductDetailsResponseListener.class;
        }
    }
}
