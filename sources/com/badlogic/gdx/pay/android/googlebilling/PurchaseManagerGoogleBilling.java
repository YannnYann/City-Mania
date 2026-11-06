package com.badlogic.gdx.pay.android.googlebilling;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.pay.FetchItemInformationException;
import com.badlogic.gdx.pay.FreeTrialPeriod;
import com.badlogic.gdx.pay.GdxPayException;
import com.badlogic.gdx.pay.Information;
import com.badlogic.gdx.pay.InvalidItemException;
import com.badlogic.gdx.pay.ItemAlreadyOwnedException;
import com.badlogic.gdx.pay.Offer;
import com.badlogic.gdx.pay.OfferType;
import com.badlogic.gdx.pay.PurchaseManager;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import com.badlogic.gdx.pay.PurchaseObserver;
import com.badlogic.gdx.pay.Transaction;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseManagerGoogleBilling implements PurchaseManager, PurchasesUpdatedListener {
    public static final Handler handler = new Handler(Looper.getMainLooper());
    public final Activity activity;
    public PurchaseManagerConfig config;
    public boolean installationComplete;
    public BillingClient mBillingClient;
    public PurchaseObserver observer;
    public boolean serviceConnected;
    public final Map<String, Information> informationMap = new ConcurrentHashMap();
    public final Map<String, ProductDetails> productDetailsMap = new HashMap();
    public boolean hasBillingSetupFinishedSuccessfully = false;
    public long reconnectMilliseconds = 1000;

    public interface ErrorCallback {
        void accept(Exception exc);
    }

    public PurchaseManagerGoogleBilling(Activity activity) {
        this.activity = activity;
        this.mBillingClient = BillingClient.newBuilder(activity).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().enablePrepaidPlans().build()).build();
    }

    @Override // com.badlogic.gdx.pay.InformationFinder
    public Information getInformation(String str) {
        Information information = this.informationMap.get(str);
        return information == null ? Information.UNAVAILABLE : information;
    }

    public String storeName() {
        return "GooglePlay";
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z) {
        Gdx.app.debug("GdxPay/GoogleBilling", "Called install()");
        this.observer = purchaseObserver;
        this.config = purchaseManagerConfig;
        this.installationComplete = false;
        startServiceConnection(new PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1(this));
    }

    public final void handleBillingSetupFinished() {
        PurchaseObserver purchaseObserver = this.observer;
        if (purchaseObserver == null) {
            return;
        }
        if (!this.serviceConnected) {
            purchaseObserver.handleInstallError(new GdxPayException("Connection to Play Billing not possible"));
        } else {
            fetchOfferDetails();
        }
    }

    public final void startServiceConnection(final Runnable runnable) {
        this.mBillingClient.startConnection(new BillingClientStateListener() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.1
            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingSetupFinished(BillingResult billingResult) {
                int responseCode = billingResult.getResponseCode();
                Gdx.app.debug("GdxPay/GoogleBilling", "Setup finished. Response code: " + responseCode);
                PurchaseManagerGoogleBilling.this.serviceConnected = responseCode == 0;
                if (PurchaseManagerGoogleBilling.this.serviceConnected) {
                    PurchaseManagerGoogleBilling.this.reconnectMilliseconds = 1000L;
                    PurchaseManagerGoogleBilling.this.hasBillingSetupFinishedSuccessfully = true;
                } else {
                    PurchaseManagerGoogleBilling.this.reconnectWithService();
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingServiceDisconnected() {
                PurchaseManagerGoogleBilling.this.serviceConnected = false;
                PurchaseManagerGoogleBilling.this.reconnectWithService();
            }
        });
    }

    public final void reconnectWithService() {
        handler.postDelayed(new Runnable() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                PurchaseManagerGoogleBilling purchaseManagerGoogleBilling = this.f$0;
                purchaseManagerGoogleBilling.startServiceConnection(purchaseManagerGoogleBilling.hasBillingSetupFinishedSuccessfully ? null : new PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1(purchaseManagerGoogleBilling));
            }
        }, this.reconnectMilliseconds);
        this.reconnectMilliseconds = Math.min(this.reconnectMilliseconds * 2, 900000L);
    }

    public final void fetchOfferDetails() {
        Gdx.app.debug("GdxPay/GoogleBilling", "Called fetchOfferDetails()");
        this.productDetailsMap.clear();
        int offerCount = this.config.getOfferCount();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < offerCount; i++) {
            Offer offer = this.config.getOffer(i);
            String strMapOfferType = mapOfferType(offer.getType());
            QueryProductDetailsParams.Product productBuild = QueryProductDetailsParams.Product.newBuilder().setProductId(offer.getIdentifierForStore(storeName())).setProductType(strMapOfferType).build();
            if ("subs".equals(strMapOfferType)) {
                arrayList2.add(productBuild);
            } else {
                arrayList.add(productBuild);
            }
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            Gdx.app.debug("GdxPay/GoogleBilling", "No products configured");
            setInstalledAndNotifyObserver();
            return;
        }
        final int[] iArr = {(!arrayList.isEmpty() ? 1 : 0) + (!arrayList2.isEmpty() ? 1 : 0)};
        final boolean[] zArr = {false};
        Runnable runnable = new Runnable() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PurchaseManagerGoogleBilling.m670$r8$lambda$nIrePbhVAPVKaD2P5CFNJwfYA(this.f$0, iArr, zArr);
            }
        };
        ErrorCallback errorCallback = new ErrorCallback() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3
            @Override // com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.ErrorCallback
            public final void accept(Exception exc) {
                PurchaseManagerGoogleBilling.$r8$lambda$2JAGJLjJSR6eBpI0nwV5sD5fIHI(this.f$0, zArr, exc);
            }
        };
        if (!arrayList.isEmpty()) {
            queryProductDetailsForProducts(arrayList, "inapp", runnable, errorCallback);
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        queryProductDetailsForProducts(arrayList2, "subs", runnable, errorCallback);
    }

    /* JADX INFO: renamed from: $r8$lambda$nI-rePbhVAPVKaD2P-5CFNJwfYA, reason: not valid java name */
    public static /* synthetic */ void m670$r8$lambda$nIrePbhVAPVKaD2P5CFNJwfYA(PurchaseManagerGoogleBilling purchaseManagerGoogleBilling, int[] iArr, boolean[] zArr) {
        purchaseManagerGoogleBilling.getClass();
        int i = iArr[0];
        if (i > 0) {
            iArr[0] = i - 1;
        }
        if (iArr[0] != 0 || zArr[0]) {
            return;
        }
        purchaseManagerGoogleBilling.setInstalledAndNotifyObserver();
    }

    public static /* synthetic */ void $r8$lambda$2JAGJLjJSR6eBpI0nwV5sD5fIHI(PurchaseManagerGoogleBilling purchaseManagerGoogleBilling, boolean[] zArr, Exception exc) {
        purchaseManagerGoogleBilling.getClass();
        zArr[0] = true;
        purchaseManagerGoogleBilling.installationComplete = true;
        Gdx.app.error("GdxPay/GoogleBilling", "Failed to fetch product details", exc);
        PurchaseObserver purchaseObserver = purchaseManagerGoogleBilling.observer;
        if (purchaseObserver != null) {
            purchaseObserver.handleInstallError(exc);
        }
    }

    public final void queryProductDetailsForProducts(List<QueryProductDetailsParams.Product> list, final String str, final Runnable runnable, final ErrorCallback errorCallback) {
        if (list == null || list.isEmpty()) {
            Gdx.app.debug("GdxPay/GoogleBilling", "Empty product list for type: " + str + " — treating as success");
            runnable.run();
            return;
        }
        QueryProductDetailsParams queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(list).build();
        Gdx.app.debug("GdxPay/GoogleBilling", "QueryProductDetailsParams (type: " + str + "): " + queryProductDetailsParamsBuild);
        this.mBillingClient.queryProductDetailsAsync(queryProductDetailsParamsBuild, new ProductDetailsResponseListener() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                PurchaseManagerGoogleBilling.$r8$lambda$A045pvnz6I5V_vpZeok2siPqpFs(this.f$0, errorCallback, str, runnable, billingResult, queryProductDetailsResult);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$A045pvnz6I5V_vpZeok2siPqpFs(PurchaseManagerGoogleBilling purchaseManagerGoogleBilling, ErrorCallback errorCallback, String str, Runnable runnable, BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        if (purchaseManagerGoogleBilling.observer == null || Gdx.app == null) {
            return;
        }
        int responseCode = billingResult.getResponseCode();
        if (responseCode != 0) {
            errorCallback.accept(new FetchItemInformationException(String.valueOf(responseCode)));
            return;
        }
        List<ProductDetails> productDetailsList = queryProductDetailsResult.getProductDetailsList();
        Gdx.app.debug("GdxPay/GoogleBilling", "Retrieved product count (batch " + str + "): " + productDetailsList.size());
        for (ProductDetails productDetails : productDetailsList) {
            purchaseManagerGoogleBilling.informationMap.put(productDetails.getProductId(), purchaseManagerGoogleBilling.convertProductDetailsToInformation(productDetails));
            purchaseManagerGoogleBilling.productDetailsMap.put(productDetails.getProductId(), productDetails);
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$pay$OfferType;

        static {
            int[] iArr = new int[OfferType.values().length];
            $SwitchMap$com$badlogic$gdx$pay$OfferType = iArr;
            try {
                iArr[OfferType.CONSUMABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$pay$OfferType[OfferType.ENTITLEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$pay$OfferType[OfferType.SUBSCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final String mapOfferType(OfferType offerType) {
        int i = AnonymousClass4.$SwitchMap$com$badlogic$gdx$pay$OfferType[offerType.ordinal()];
        if (i == 1 || i == 2) {
            return "inapp";
        }
        if (i == 3) {
            return "subs";
        }
        throw new IllegalStateException("Unsupported OfferType: " + offerType);
    }

    public final Information convertProductDetailsToInformation(ProductDetails productDetails) {
        Gdx.app.debug("GdxPay/GoogleBilling", "Converting productDetails: \n" + productDetails);
        Information.Builder builderLocalDescription = Information.newBuilder().localName(productDetails.getTitle()).localDescription(productDetails.getDescription());
        if ("subs".equals(productDetails.getProductType())) {
            convertSubscriptionProductToInformation(builderLocalDescription, productDetails.getSubscriptionOfferDetails());
        } else {
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
            if (oneTimePurchaseOfferDetails != null) {
                convertOneTimeProductToInformation(builderLocalDescription, oneTimePurchaseOfferDetails);
            }
        }
        return builderLocalDescription.build();
    }

    public final void convertSubscriptionProductToInformation(Information.Builder builder, List<ProductDetails.SubscriptionOfferDetails> list) {
        if (list == null || list.isEmpty()) {
            Gdx.app.error("GdxPay/GoogleBilling", "Empty SubscriptionOfferDetails");
            return;
        }
        ProductDetails.SubscriptionOfferDetails activeSubscriptionOfferDetails = getActiveSubscriptionOfferDetails(list);
        if (activeSubscriptionOfferDetails.getPricingPhases().getPricingPhaseList().isEmpty()) {
            Gdx.app.error("GdxPay/GoogleBilling", "getPricingPhases()  or empty ");
            return;
        }
        ProductDetails.PricingPhase paidRecurringPricingPhase = getPaidRecurringPricingPhase(activeSubscriptionOfferDetails);
        if (paidRecurringPricingPhase == null) {
            Gdx.app.error("GdxPay/GoogleBilling", "no paidRecurringPricingPhase found ");
            return;
        }
        builder.localPricing(paidRecurringPricingPhase.getFormattedPrice()).priceCurrencyCode(paidRecurringPricingPhase.getPriceCurrencyCode()).priceInCents(Integer.valueOf(((int) paidRecurringPricingPhase.getPriceAmountMicros()) / UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS)).priceAsDouble(Double.valueOf(paidRecurringPricingPhase.getPriceAmountMicros() / 1000000.0d));
        ProductDetails.PricingPhase freeTrialSubscriptionPhase = getFreeTrialSubscriptionPhase(activeSubscriptionOfferDetails.getPricingPhases());
        if (freeTrialSubscriptionPhase != null) {
            builder.freeTrialPeriod(convertToFreeTrialPeriod(freeTrialSubscriptionPhase.getBillingPeriod(), freeTrialSubscriptionPhase.getBillingCycleCount()));
        }
    }

    public final ProductDetails.SubscriptionOfferDetails getActiveSubscriptionOfferDetails(List<ProductDetails.SubscriptionOfferDetails> list) {
        return list.get(0);
    }

    public final ProductDetails.PricingPhase getPaidRecurringPricingPhase(ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails) {
        for (ProductDetails.PricingPhase pricingPhase : subscriptionOfferDetails.getPricingPhases().getPricingPhaseList()) {
            if (isPaidForSubscriptionPhase(pricingPhase)) {
                return pricingPhase;
            }
        }
        return null;
    }

    public static boolean isPaidForSubscriptionPhase(ProductDetails.PricingPhase pricingPhase) {
        return pricingPhase.getPriceAmountMicros() > 0;
    }

    public static ProductDetails.PricingPhase getFreeTrialSubscriptionPhase(ProductDetails.PricingPhases pricingPhases) {
        for (ProductDetails.PricingPhase pricingPhase : pricingPhases.getPricingPhaseList()) {
            if (isFreeTrialSubscriptionPhase(pricingPhase)) {
                return pricingPhase;
            }
        }
        return null;
    }

    public static boolean isFreeTrialSubscriptionPhase(ProductDetails.PricingPhase pricingPhase) {
        if (pricingPhase.getPriceAmountMicros() == 0) {
            return pricingPhase.getRecurrenceMode() == 3 || pricingPhase.getRecurrenceMode() == 2;
        }
        return false;
    }

    public static void convertOneTimeProductToInformation(Information.Builder builder, ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails) {
        builder.localPricing(oneTimePurchaseOfferDetails.getFormattedPrice()).priceCurrencyCode(oneTimePurchaseOfferDetails.getPriceCurrencyCode()).priceInCents(Integer.valueOf((int) (oneTimePurchaseOfferDetails.getPriceAmountMicros() / 10000))).priceAsDouble(Double.valueOf(oneTimePurchaseOfferDetails.getPriceAmountMicros() / 1000000.0d));
    }

    public final FreeTrialPeriod convertToFreeTrialPeriod(String str, int i) {
        if (str != null && !str.isEmpty()) {
            try {
                FreeTrialPeriod freeTrialPeriodConvertToFreeTrialPeriod = Iso8601DurationStringToFreeTrialPeriodConverter.convertToFreeTrialPeriod(str);
                return i > 1 ? new FreeTrialPeriod(freeTrialPeriodConvertToFreeTrialPeriod.getNumberOfUnits() * i, freeTrialPeriodConvertToFreeTrialPeriod.getUnit()) : freeTrialPeriodConvertToFreeTrialPeriod;
            } catch (RuntimeException e) {
                Gdx.app.error("GdxPay/GoogleBilling", "Failed to parse iso8601Duration: " + str, e);
            }
        }
        return null;
    }

    public final void setInstalledAndNotifyObserver() {
        if (this.installationComplete) {
            return;
        }
        this.installationComplete = true;
        this.observer.handleInstall();
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public boolean installed() {
        return this.installationComplete;
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchase(String str) {
        ProductDetails productDetails = this.productDetailsMap.get(str);
        if (productDetails == null) {
            this.observer.handlePurchaseError(new InvalidItemException(str));
        } else {
            this.mBillingClient.launchBillingFlow(this.activity, getBillingFlowParams(productDetails).build());
        }
    }

    public BillingFlowParams.Builder getBillingFlowParams(ProductDetails productDetails) {
        String offerToken;
        List<BillingFlowParams.ProductDetailsParams> listSingletonList;
        if (productDetails.getProductType().equals("inapp")) {
            listSingletonList = Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build());
        } else {
            List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = productDetails.getSubscriptionOfferDetails();
            if (subscriptionOfferDetails == null || subscriptionOfferDetails.isEmpty()) {
                Gdx.app.error("GdxPay/GoogleBilling", "subscriptionOfferDetails are empty for product: " + productDetails);
                offerToken = null;
            } else {
                offerToken = getActiveSubscriptionOfferDetails(subscriptionOfferDetails).getOfferToken();
            }
            listSingletonList = Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).setOfferToken(offerToken).build());
        }
        return BillingFlowParams.newBuilder().setProductDetailsParamsList(listSingletonList);
    }

    @Override // com.badlogic.gdx.pay.PurchaseManager
    public void purchaseRestore() {
        String str;
        if (this.config.hasAnyOfferWithType(OfferType.SUBSCRIPTION)) {
            str = "subs";
        } else {
            str = "inapp";
        }
        this.mBillingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(str).build(), new PurchasesResponseListener() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                PurchaseManagerGoogleBilling.$r8$lambda$B3X1zBuU_XBAS5ec0YtXcGitM3A(this.f$0, billingResult, list);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$B3X1zBuU_XBAS5ec0YtXcGitM3A(PurchaseManagerGoogleBilling purchaseManagerGoogleBilling, BillingResult billingResult, List list) {
        purchaseManagerGoogleBilling.getClass();
        int responseCode = billingResult.getResponseCode();
        if (responseCode == 0) {
            purchaseManagerGoogleBilling.handlePurchase(list, true);
            return;
        }
        Gdx.app.error("GdxPay/GoogleBilling", "queryPurchases failed with responseCode " + responseCode);
        purchaseManagerGoogleBilling.observer.handleRestoreError(new GdxPayException("queryPurchases failed with responseCode " + responseCode));
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        int responseCode = billingResult.getResponseCode();
        PurchaseObserver purchaseObserver = this.observer;
        if (purchaseObserver == null) {
            return;
        }
        if (responseCode == 0 && list != null) {
            handlePurchase(list, false);
            return;
        }
        if (responseCode == 1) {
            purchaseObserver.handlePurchaseCanceled();
            return;
        }
        if (responseCode == 7) {
            purchaseObserver.handlePurchaseError(new ItemAlreadyOwnedException());
            return;
        }
        if (responseCode == 4) {
            purchaseObserver.handlePurchaseError(new InvalidItemException());
            return;
        }
        Gdx.app.error("GdxPay/GoogleBilling", "onPurchasesUpdated failed with responseCode " + responseCode);
        this.observer.handlePurchaseError(new GdxPayException("onPurchasesUpdated failed with responseCode " + responseCode));
    }

    public final void handlePurchase(List<Purchase> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Purchase purchase : list) {
            if (purchase.getPurchaseState() == 1) {
                String str = purchase.getProducts().get(0);
                Transaction transaction = new Transaction();
                transaction.setIdentifier(str);
                transaction.setOrderId(purchase.getOrderId());
                transaction.setRequestId(purchase.getPurchaseToken());
                transaction.setStoreName("GooglePlay");
                transaction.setPurchaseTime(new Date(purchase.getPurchaseTime()));
                transaction.setPurchaseText("Purchased: " + str);
                transaction.setReversalTime(null);
                transaction.setReversalText(null);
                transaction.setTransactionData(purchase.getOriginalJson());
                transaction.setTransactionDataSignature(purchase.getSignature());
                if (z) {
                    arrayList.add(transaction);
                } else {
                    this.observer.handlePurchase(transaction);
                }
                Offer offer = this.config.getOffer(str);
                if (offer != null) {
                    int i = AnonymousClass4.$SwitchMap$com$badlogic$gdx$pay$OfferType[offer.getType().ordinal()];
                    if (i == 1) {
                        this.mBillingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new ConsumeResponseListener() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.2
                            @Override // com.android.billingclient.api.ConsumeResponseListener
                            public void onConsumeResponse(BillingResult billingResult, String str2) {
                                billingResult.getResponseCode();
                            }
                        });
                    } else if (i == 2 || i == 3) {
                        if (!purchase.isAcknowledged()) {
                            this.mBillingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.3
                                @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
                                public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                                }
                            });
                        }
                    }
                }
            }
        }
        if (z) {
            this.observer.handleRestore((Transaction[]) arrayList.toArray(new Transaction[0]));
        }
    }
}
