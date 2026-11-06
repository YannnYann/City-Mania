package com.android.billingclient.api;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.BundleCompat;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzig;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zziq;
import com.google.android.gms.internal.play_billing.zzis;
import com.google.android.gms.internal.play_billing.zziw;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjt;
import com.google.android.gms.internal.play_billing.zzjv;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@8.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class BillingClientImpl extends BillingClient {
    public boolean zzA;
    public boolean zzB;
    public boolean zzC;
    public PendingPurchasesParams zzD;
    public boolean zzE;
    public boolean zzF;
    public volatile BillingClientStateListener zzG;
    public ExecutorService zzH;
    public final Long zzI;
    public com.google.android.gms.internal.play_billing.zzbl zzJ;
    public final Object zza;
    public volatile int zzb;
    public final String zzc;
    public final String zzd;
    public final Handler zze;
    public volatile zzs zzf;
    public Context zzg;
    public zzch zzh;
    public volatile com.google.android.gms.internal.play_billing.zzam zzi;
    public volatile zzbf zzj;
    public boolean zzk;
    public boolean zzl;
    public int zzm;
    public boolean zzn;
    public boolean zzo;
    public boolean zzp;
    public boolean zzq;
    public boolean zzr;
    public boolean zzs;
    public boolean zzt;
    public boolean zzu;
    public boolean zzv;
    public boolean zzw;
    public boolean zzx;
    public boolean zzy;
    public boolean zzz;

    public static /* synthetic */ Void zzA(BillingClientImpl billingClientImpl, ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        billingClientImpl.zzaA(externalOfferAvailabilityListener);
        return null;
    }

    public static /* synthetic */ Void zzB(BillingClientImpl billingClientImpl, ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaC(externalOfferInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Void zzC(BillingClientImpl billingClientImpl, ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, String str) throws Exception {
        billingClientImpl.zzay(externalOfferReportingDetailsListener, null);
        return null;
    }

    public static /* synthetic */ Void zzD(BillingClientImpl billingClientImpl, AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        billingClientImpl.zzax(alternativeBillingOnlyReportingDetailsListener);
        return null;
    }

    public static /* synthetic */ Void zzE(BillingClientImpl billingClientImpl, AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) throws Exception {
        billingClientImpl.zzaz(alternativeBillingOnlyAvailabilityListener);
        return null;
    }

    public static Future zzG(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaj
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static /* synthetic */ void zzH(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static /* synthetic */ void zzI(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzbt.zzk());
    }

    public static /* synthetic */ void zzJ(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public static /* synthetic */ void zzL(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public static /* synthetic */ void zzN(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
    }

    public static /* synthetic */ void zzP(BillingClientImpl billingClientImpl, BillingResult billingResult) {
        if (billingClientImpl.zzf.zzd() != null) {
            billingClientImpl.zzf.zzd().onPurchasesUpdated(billingResult, null);
        } else {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    public static final String zzaZ(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED";
    }

    public static /* bridge */ /* synthetic */ void zzac(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzm = i;
        billingClientImpl.zzC = i >= 26;
        billingClientImpl.zzB = i >= 24;
        billingClientImpl.zzA = i >= 23;
        billingClientImpl.zzz = i >= 22;
        billingClientImpl.zzy = i >= 21;
        billingClientImpl.zzx = i >= 20;
        billingClientImpl.zzw = i >= 19;
        billingClientImpl.zzv = i >= 18;
        billingClientImpl.zzu = i >= 17;
        billingClientImpl.zzt = i >= 16;
        billingClientImpl.zzs = i >= 15;
        billingClientImpl.zzr = i >= 14;
        billingClientImpl.zzq = i >= 12;
        billingClientImpl.zzp = i >= 9;
        billingClientImpl.zzo = i >= 8;
        billingClientImpl.zzn = i >= 6;
    }

    public static /* bridge */ /* synthetic */ void zzae(BillingClientImpl billingClientImpl, int i) {
        if (i != 0) {
            billingClientImpl.zzaS(0);
            return;
        }
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                billingClientImpl.zzaS(2);
                zzs zzsVar = billingClientImpl.zzf != null ? billingClientImpl.zzf : null;
                if (zzsVar != null) {
                    zzsVar.zzg(billingClientImpl.zzy);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzai(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.zza) {
            z = true;
            if (billingClientImpl.zzb != 1) {
                z = false;
            }
        }
        return z;
    }

    @SuppressLint({"PrivateApi"})
    public static String zzaw() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ BillingResult zzl(Exception exc) {
        return exc instanceof DeadObjectException ? zzcj.zzj : zzcj.zzh;
    }

    public static /* synthetic */ Object zzq(BillingClientImpl billingClientImpl, int i, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        billingClientImpl.zzaU(new zzbc(billingClientImpl, zzpVar), i);
        return "reconnectIfNeeded";
    }

    public static /* synthetic */ Object zzr(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) throws Throwable {
        if (billingClientImpl.zzaX(30000L)) {
            billingClientImpl.zzaD(consumeParams, consumeResponseListener);
            return null;
        }
        zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
        BillingResult billingResult = zzcj.zzj;
        billingClientImpl.zzbd(zzieVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        return null;
    }

    public static /* synthetic */ Object zzs(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        if (!billingClientImpl.zzaX(30000L)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzcj.zzj;
            billingClientImpl.zzbd(zzieVar, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
            return null;
        }
        if (billingClientImpl.zzu) {
            zzbo zzboVarZzg = billingClientImpl.zzg(queryProductDetailsParams);
            productDetailsResponseListener.onProductDetailsResponse(zzcj.zza(zzboVarZzg.zza(), zzboVarZzg.zzb()), new QueryProductDetailsResult(zzboVarZzg.zzc(), zzboVarZzg.zzd()));
            return null;
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Querying product details is not supported.");
        zzie zzieVar2 = zzie.PRODUCT_DETAILS_NOT_SUPPORTED;
        BillingResult billingResult2 = zzcj.zzr;
        billingClientImpl.zzbd(zzieVar2, 7, billingResult2);
        productDetailsResponseListener.onProductDetailsResponse(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
        return null;
    }

    public static /* synthetic */ Object zzt(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        billingClientImpl.zzas(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
        return null;
    }

    public static /* synthetic */ Object zzu(BillingClientImpl billingClientImpl, Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzau(bundle, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Object zzv(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        billingClientImpl.zzat(billingConfigResponseListener);
        return null;
    }

    public static /* synthetic */ Void zzz(BillingClientImpl billingClientImpl, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaB(alternativeBillingOnlyInformationDialogListener, activity, resultReceiver);
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzaa
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzt(this.zza, acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzab
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzL(this.zza, acknowledgePurchaseResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, billingResultZzaq);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResultZzaq);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzak
            @Override // java.util.concurrent.Callable
            public final Object call() throws Throwable {
                BillingClientImpl.zzr(this.zza, consumeResponseListener, consumeParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzH(this.zza, consumeResponseListener, consumeParams);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, billingResultZzaq);
            consumeResponseListener.onConsumeResponse(billingResultZzaq, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void createAlternativeBillingOnlyReportingDetailsAsync(final AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzaf
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzD(this.zza, alternativeBillingOnlyReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzag
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzan(), zzF()) == null) {
            zzaH(alternativeBillingOnlyReportingDetailsListener, zzaq(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void createExternalOfferReportingDetailsAsync(final ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        final String str = null;
        if (zzG(new Callable(externalOfferReportingDetailsListener, str) { // from class: com.android.billingclient.api.zzaq
            public final /* synthetic */ ExternalOfferReportingDetailsListener zzb;

            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzC(this.zza, this.zzb, null);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzar
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaI(externalOfferReportingDetailsListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzan(), zzF()) == null) {
            zzaI(externalOfferReportingDetailsListener, zzaq(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void endConnection() {
        zzbi(12);
        synchronized (this.zza) {
            try {
            } finally {
            }
            if (this.zzf != null) {
                this.zzf.zzf();
                try {
                    com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Unbinding from service.");
                    zzaV();
                } catch (Throwable th) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "There was an exception while unbinding from the service while ending connection!", th);
                }
                try {
                    zzaT();
                    zzaS(3);
                } catch (Throwable th2) {
                    try {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "There was an exception while shutting down the executor service while ending connection!", th2);
                        zzaS(3);
                    } catch (Throwable th3) {
                        zzaS(3);
                        this.zzG = null;
                        throw th3;
                    }
                }
                this.zzG = null;
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Unbinding from service.");
                zzaV();
                zzaT();
                zzaS(3);
                this.zzG = null;
            }
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzi
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzad
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzv(this.zza, billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzae
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzJ(this.zza, billingConfigResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 13, billingResultZzaq);
            billingConfigResponseListener.onBillingConfigResponse(billingResultZzaq, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final int getConnectionState() {
        int i;
        synchronized (this.zza) {
            i = this.zzb;
        }
        return i;
    }

    public final void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, zzb zzbVar, String str, zzch zzchVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zziqVarZzc.zzt(str2);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(this.zzI.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        if (zzchVar != null) {
            this.zzh = zzchVar;
        } else {
            this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzs(this.zzg, purchasesUpdatedListener, null, zzbVar, null, this.zzh);
        this.zzD = pendingPurchasesParams;
        this.zzF = zzbVar != null;
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void isAlternativeBillingOnlyAvailableAsync(final AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzah
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzE(this.zza, alternativeBillingOnlyAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzai
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzan(), zzF()) == null) {
            zzaF(alternativeBillingOnlyAvailabilityListener, zzaq(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void isExternalOfferAvailableAsync(final ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzau
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzA(this.zza, externalOfferAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzv
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaJ(externalOfferAvailabilityListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzan(), zzF()) == null) {
            zzaJ(externalOfferAvailabilityListener, zzaq(), zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f1  */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.billingclient.api.BillingResult isFeatureSupported(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 636
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.isFeatureSupported(java.lang.String):com.android.billingclient.api.BillingResult");
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        if (this.zzE) {
            return true;
        }
        return zzaY();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x050b  */
    /* JADX WARN: Type inference failed for: r30v0, types: [com.android.billingclient.api.BillingClientImpl] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.billingclient.api.BillingResult launchBillingFlow(android.app.Activity r31, com.android.billingclient.api.BillingFlowParams r32) {
        /*
            Method dump skipped, instruction units count: 1684
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.launchBillingFlow(android.app.Activity, com.android.billingclient.api.BillingFlowParams):com.android.billingclient.api.BillingResult");
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzal
            @Override // java.util.concurrent.Callable
            public final Object call() throws JSONException {
                BillingClientImpl.zzs(this.zza, productDetailsResponseListener, queryProductDetailsParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzap
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzN(this.zza, productDetailsResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, billingResultZzaq);
            productDetailsResponseListener.onProductDetailsResponse(billingResultZzaq, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (zzG(new zzaw(this, purchasesResponseListener, queryPurchasesParams.zza(), false), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzat
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzI(this.zza, purchasesResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, billingResultZzaq);
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaq, com.google.android.gms.internal.play_billing.zzbt.zzk());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult showInAppMessages(final Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        if (!zzaW(3000L)) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service disconnected.");
            return zzcj.zzj;
        }
        if (!this.zzq) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support showing in-app messages.");
            return zzcj.zzs;
        }
        View viewFindViewById = activity.findViewById(R.id.content);
        IBinder windowToken = viewFindViewById.getWindowToken();
        Rect rect = new Rect();
        viewFindViewById.getGlobalVisibleRect(rect);
        final Bundle bundle = new Bundle();
        BundleCompat.putBinder(bundle, "KEY_WINDOW_TOKEN", windowToken);
        bundle.putInt("KEY_DIMEN_LEFT", rect.left);
        bundle.putInt("KEY_DIMEN_TOP", rect.top);
        bundle.putInt("KEY_DIMEN_RIGHT", rect.right);
        bundle.putInt("KEY_DIMEN_BOTTOM", rect.bottom);
        bundle.putString("playBillingLibraryVersion", this.zzc);
        String str = this.zzd;
        if (str != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str);
        }
        bundle.putIntegerArrayList("KEY_CATEGORY_IDS", inAppMessageParams.zza());
        Handler handler = this.zze;
        final zzax zzaxVar = new zzax(this, handler, inAppMessageResponseListener);
        zzG(new Callable() { // from class: com.android.billingclient.api.zzas
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzu(this.zza, bundle, activity, zzaxVar);
                return null;
            }
        }, 5000L, null, handler, zzF());
        return zzcj.zzi;
    }

    public final synchronized ExecutorService zzF() {
        try {
            if (this.zzH == null) {
                this.zzH = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzc.zza, new zzav(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzH;
    }

    public final /* synthetic */ Void zzaA(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        zzbp zzbpVar = null;
        try {
            if (!zzaX(30000L)) {
                zzaJ(externalOfferAvailabilityListener, zzcj.zzj, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzB) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    zzaJ(externalOfferAvailabilityListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzq(24, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.zzc, this.zzd, this.zzI.longValue()), new zzbm(externalOfferAvailabilityListener, this.zzh, this.zzm, zzbpVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support launching external offer flow.");
                zzaJ(externalOfferAvailabilityListener, zzcj.zzA, zzie.LAUNCH_EXTERNAL_OFFER_FLOW_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaJ(externalOfferAvailabilityListener, zzcj.zzj, zzie.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaJ(externalOfferAvailabilityListener, zzcj.zzh, zzie.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final /* synthetic */ Void zzaB(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            if (zzamVar == null) {
                zzaM(alternativeBillingOnlyInformationDialogListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzm(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.zzc, this.zzd, this.zzI.longValue()), new zzbi(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzaM(alternativeBillingOnlyInformationDialogListener, zzcj.zzj, zzie.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaM(alternativeBillingOnlyInformationDialogListener, zzcj.zzh, zzie.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final /* synthetic */ Void zzaC(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            if (zzamVar == null) {
                zzaK(externalOfferInformationDialogListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzo(22, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.zzc, this.zzd, this.zzI.longValue()), new zzbk(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzaK(externalOfferInformationDialogListener, zzcj.zzj, zzie.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaK(externalOfferInformationDialogListener, zzcj.zzh, zzie.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    public final void zzaD(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Throwable {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        int iZza;
        String strZzj;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Consuming purchase with token: " + purchaseToken);
            synchronized (this.zza) {
                try {
                    try {
                        zzamVar = this.zzi;
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } catch (DeadObjectException e) {
                    e = e;
                    zzaG(consumeResponseListener, purchaseToken, zzcj.zzj, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    zzaG(consumeResponseListener, purchaseToken, zzcj.zzh, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
                    return;
                }
            }
            if (zzamVar == null) {
                try {
                    zzaG(consumeResponseListener, purchaseToken, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                    return;
                } catch (DeadObjectException e3) {
                    e = e3;
                    zzaG(consumeResponseListener, purchaseToken, zzcj.zzj, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
                    return;
                } catch (Exception e4) {
                    e = e4;
                    zzaG(consumeResponseListener, purchaseToken, zzcj.zzh, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
                    return;
                }
            }
            if (this.zzp) {
                String packageName = this.zzg.getPackageName();
                boolean z = this.zzp;
                String str = this.zzc;
                String str2 = this.zzd;
                long jLongValue = this.zzI.longValue();
                Bundle bundle = new Bundle();
                if (z) {
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str, str2, jLongValue);
                }
                Bundle bundleZze = zzamVar.zze(9, packageName, purchaseToken, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundleZze, "BillingClient");
            } else {
                iZza = zzamVar.zza(3, this.zzg.getPackageName(), purchaseToken);
                strZzj = "";
            }
            BillingResult billingResultZza = zzcj.zza(iZza, strZzj);
            if (iZza == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(billingResultZza, purchaseToken);
                return;
            }
            zzaG(consumeResponseListener, purchaseToken, billingResultZza, zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "Error consuming purchase with token. Response code: " + iZza, null);
        } catch (DeadObjectException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    public final void zzaE(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error in acknowledge purchase!", exc);
        zzbf(zzieVar, 3, billingResult, zzcg.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public final void zzaF(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 14, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    public final void zzaG(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzie zzieVar, String str2, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str2, exc);
        zzbf(zzieVar, 4, billingResult, zzcg.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    public final void zzaH(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 15, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    public final void zzaI(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 24, billingResult, zzcg.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    public final void zzaJ(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 23, billingResult, zzcg.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    public final void zzaK(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 25, billingResult, zzcg.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    public final void zzaL(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "getBillingConfig got an exception.", exc);
        zzbf(zzieVar, 13, billingResult, zzcg.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public final void zzaM(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzie zzieVar, Exception exc) {
        zzbf(zzieVar, 16, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    public final void zzaN(int i, zzie zzieVar, Exception exc) {
        zzhx zzhxVar;
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "showInAppMessages error.", exc);
        zzch zzchVar = this.zzh;
        String strZza = zzcg.zza(exc);
        try {
            zzic zzicVarZzc = zzig.zzc();
            zzicVarZzc.zzo(i);
            if (zzieVar != null) {
                zzicVarZzc.zzn(zzieVar);
            }
            if (strZza != null) {
                zzicVarZzc.zza(strZza);
            }
            zzhv zzhvVarZzc = zzhx.zzc();
            zzhvVarZzc.zzl(zzicVarZzc);
            zzhvVarZzc.zzp(30);
            zzhxVar = (zzhx) zzhvVarZzc.zze();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", th);
            zzhxVar = null;
        }
        zzchVar.zza(zzhxVar);
    }

    public final void zzaO(zzhx zzhxVar) {
        try {
            this.zzh.zzb(zzhxVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzaP(zzhx zzhxVar, long j, boolean z) {
        try {
            this.zzh.zze(zzhxVar, this.zzm, j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzaQ(zzib zzibVar) {
        try {
            this.zzh.zzg(zzibVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzaR(zzie zzieVar, BillingResult billingResult, int i) {
        try {
            int i2 = zzcg.zza;
            zzhv zzhvVar = (zzhv) zzcg.zzb(zzieVar, 6, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED).zzm();
            zzjt zzjtVarZzc = zzjv.zzc();
            zzjtVarZzc.zza(i > 0);
            zzjtVarZzc.zzl(i);
            zzhvVar.zzo(zzjtVarZzc);
            zzaO((zzhx) zzhvVar.zze());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzaS(int i) {
        synchronized (this.zza) {
            try {
                if (this.zzb == 3) {
                    return;
                }
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Setting clientState from " + zzaZ(this.zzb) + " to " + zzaZ(i));
                this.zzb = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void zzaT() {
        ExecutorService executorService = this.zzH;
        if (executorService != null) {
            executorService.shutdownNow();
            this.zzH = null;
        }
    }

    public final void zzaU(BillingClientStateListener billingClientStateListener, int i) {
        zzie zzieVar;
        BillingResult billingResultZzap;
        BillingResult billingResult;
        synchronized (this.zza) {
            try {
                if (zzaY()) {
                    billingResultZzap = zzap(i);
                } else {
                    if (this.zzb == 1) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client is already in the process of connecting to billing service.");
                        zzie zzieVar2 = zzie.BILLING_CLIENT_CONNECTING;
                        billingResult = zzcj.zzd;
                        zzaR(zzieVar2, billingResult, i);
                    } else if (this.zzb == 3) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        zzie zzieVar3 = zzie.BILLING_CLIENT_CLOSED;
                        billingResult = zzcj.zzj;
                        zzaR(zzieVar3, billingResult, i);
                    } else {
                        zzaS(1);
                        if (i == 0) {
                            this.zzG = billingClientStateListener;
                            i = 0;
                        }
                        zzaV();
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Starting in-app billing setup.");
                        this.zzj = new zzbf(this, billingClientStateListener, i, null);
                        this.zzj.zzc();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> listQueryIntentServices = this.zzg.getPackageManager().queryIntentServices(intent, 0);
                        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                            zzieVar = zzie.INTENT_SERVICE_NOT_FOUND;
                        } else {
                            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.zzc);
                                    synchronized (this.zza) {
                                        try {
                                            if (this.zzb == 2) {
                                                billingResultZzap = zzap(i);
                                            } else if (this.zzb != 1) {
                                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                zzie zzieVar4 = zzie.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                billingResult = zzcj.zzj;
                                                zzaR(zzieVar4, billingResult, i);
                                            } else {
                                                zzbf zzbfVar = this.zzj;
                                                if ((i <= 0 || Build.VERSION.SDK_INT < 29) ? this.zzg.bindService(intent2, zzbfVar, 1) : this.zzg.bindService(intent2, 1, zzF(), zzbfVar)) {
                                                    com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Service was bonded successfully.");
                                                    billingResultZzap = null;
                                                } else {
                                                    zzieVar = zzie.BILLING_SERVICE_BLOCKED;
                                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Connection to Billing service is blocked.");
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        }
                        zzaS(0);
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Billing service unavailable on device.");
                        BillingResult billingResult2 = zzcj.zzb;
                        zzaR(zzieVar, billingResult2, i);
                        billingResultZzap = billingResult2;
                    }
                    billingResultZzap = billingResult;
                }
            } finally {
            }
        }
        if (billingResultZzap != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzaV() {
        synchronized (this.zza) {
            if (this.zzj != null) {
                try {
                    this.zzg.unbindService(this.zzj);
                } catch (Throwable th) {
                    try {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "There was an exception while unbinding service!", th);
                        this.zzi = null;
                        this.zzj = null;
                    } finally {
                        this.zzi = null;
                        this.zzj = null;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzaW(long j) {
        try {
            BillingResult billingResult = (BillingResult) zzar(1).get(Build.VERSION.SDK_INT < 29 ? 0L : 3000L, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error during reconnection attempt: ", e);
        }
        return zzaY();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzaX(long j) {
        long jMax;
        com.google.android.gms.internal.play_billing.zzbi zzbiVarZzb = com.google.android.gms.internal.play_billing.zzbi.zzb(this.zzJ);
        long jZza = 30000;
        for (int i = 1; i <= 3; i++) {
            try {
                jMax = Math.max(0L, jZza);
            } catch (Exception e) {
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error during reconnection attempt: ", e);
            }
            if (jMax <= 0) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "No time remaining for reconnection attempt.");
                return zzaY();
            }
            BillingResult billingResult = (BillingResult) zzar(i).get(jMax, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
                return zzaY();
            }
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            jZza = 30000 - zzbiVarZzb.zza(timeUnit);
            long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
            if (jZza < jPow) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection failed due to timeout limit reached.");
                return zzaY();
            }
            if (i < 3 && jPow > 0) {
                try {
                    Thread.sleep(jPow);
                    jZza = 30000 - zzbiVarZzb.zza(timeUnit);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error sleeping during reconnection attempt: ", e2);
                }
            }
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Max retries reached.");
        return zzaY();
    }

    public final boolean zzaY() {
        boolean z;
        synchronized (this.zza) {
            try {
                z = false;
                if (this.zzb == 2 && this.zzi != null && this.zzj != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public final void zzag(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.zze.post(runnable);
        }
    }

    public final /* synthetic */ Bundle zzal(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            return zzamVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL) : zzamVar.zzg(i, this.zzg.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzcj.zzj, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzcj.zzh, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e2));
        }
    }

    public final /* synthetic */ Bundle zzam(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            return zzamVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL) : zzamVar.zzf(3, this.zzg.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzcj.zzj, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzcj.zzh, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e2));
        }
    }

    public final Handler zzan() {
        return Looper.myLooper() == null ? this.zze : new Handler(Looper.myLooper());
    }

    public final zzbo zzao(BillingResult billingResult, zzie zzieVar, String str, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str, exc);
        zzbf(zzieVar, 7, billingResult, zzcg.zza(exc));
        return new zzbo(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    public final BillingResult zzap(int i) {
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzhz zzhzVarZzc = zzib.zzc();
        zzhzVarZzc.zzo(6);
        zzjt zzjtVarZzc = zzjv.zzc();
        zzjtVarZzc.zzn(true);
        zzjtVarZzc.zza(i > 0);
        zzjtVarZzc.zzl(i);
        zzhzVarZzc.zzn(zzjtVarZzc);
        zzaQ((zzib) zzhzVarZzc.zze());
        return zzcj.zzi;
    }

    public final BillingResult zzaq() {
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    return zzcj.zzj;
                }
            }
            return zzcj.zzh;
        }
    }

    public final com.google.android.gms.internal.play_billing.zzcz zzar(final int i) {
        if (this.zzE && !zzaY()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new com.google.android.gms.internal.play_billing.zzr() { // from class: com.android.billingclient.api.zzu
                @Override // com.google.android.gms.internal.play_billing.zzr
                public final Object zza(com.google.android.gms.internal.play_billing.zzp zzpVar) {
                    return BillingClientImpl.zzq(this.zza, i, zzpVar);
                }
            });
        }
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Already connected or not opted into auto reconnection.");
        return com.google.android.gms.internal.play_billing.zzcu.zza(zzcj.zzi);
    }

    public final /* synthetic */ Object zzas(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            if (!zzaX(30000L)) {
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzcj.zzj;
                zzbd(zzieVar, 3, billingResult);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            } else if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Please provide a valid purchase token.");
                zzie zzieVar2 = zzie.EMPTY_PURCHASE_TOKEN;
                BillingResult billingResult2 = zzcj.zzg;
                zzbd(zzieVar2, 3, billingResult2);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult2);
            } else if (this.zzp) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar != null) {
                    String packageName = this.zzg.getPackageName();
                    String purchaseToken = acknowledgePurchaseParams.getPurchaseToken();
                    String str = this.zzc;
                    String str2 = this.zzd;
                    long jLongValue = this.zzI.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str, str2, jLongValue);
                    Bundle bundleZzd = zzamVar.zzd(9, packageName, purchaseToken, bundle);
                    acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(zzcj.zza(com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzd, "BillingClient"), com.google.android.gms.internal.play_billing.zzc.zzj(bundleZzd, "BillingClient")));
                    return null;
                }
                zzaE(acknowledgePurchaseResponseListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzie zzieVar3 = zzie.API_VERSION_NOT_V9;
                BillingResult billingResult3 = zzcj.zza;
                zzbd(zzieVar3, 3, billingResult3);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
            }
            return null;
        } catch (DeadObjectException e) {
            zzaE(acknowledgePurchaseResponseListener, zzcj.zzj, zzie.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e);
            return null;
        } catch (Exception e2) {
            zzaE(acknowledgePurchaseResponseListener, zzcj.zzh, zzie.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e2);
            return null;
        }
    }

    public final /* synthetic */ Object zzat(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        zzbp zzbpVar = null;
        try {
            if (!zzaX(30000L)) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service disconnected.");
                zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzcj.zzj;
                zzbd(zzieVar, 13, billingResult);
                billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            } else if (this.zzv) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    zzaL(billingConfigResponseListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str = this.zzc;
                    String str2 = this.zzd;
                    long jLongValue = this.zzI.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str, str2, jLongValue);
                    zzamVar.zzn(18, packageName, bundle, new zzbj(billingConfigResponseListener, this.zzh, this.zzm, zzbpVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support get billing config.");
                zzie zzieVar2 = zzie.GET_BILLING_CONFIG_NOT_SUPPORTED;
                BillingResult billingResult2 = zzcj.zzy;
                zzbd(zzieVar2, 13, billingResult2);
                billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            }
        } catch (DeadObjectException e) {
            zzaL(billingConfigResponseListener, zzcj.zzj, zzie.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaL(billingConfigResponseListener, zzcj.zzh, zzie.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final /* synthetic */ Object zzau(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            if (zzamVar == null) {
                zzaN(-1, zzie.SERVICE_RESET_TO_NULL, null);
            } else {
                zzamVar.zzr(12, this.zzg.getPackageName(), bundle, new zzbn(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzaN(-1, zzie.SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaN(6, zzie.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final String zzav(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzg.getPackageName();
        }
        return null;
    }

    public final /* synthetic */ Void zzax(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        zzbp zzbpVar = null;
        try {
            if (!zzaX(30000L)) {
                zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzj, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzy) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzk(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.zzc, this.zzd, this.zzI.longValue()), new zzbg(alternativeBillingOnlyReportingDetailsListener, this.zzh, this.zzm, zzbpVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support alternative billing only.");
                zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzD, zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzj, zzie.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaH(alternativeBillingOnlyReportingDetailsListener, zzcj.zzh, zzie.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final /* synthetic */ Void zzay(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, String str) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        zzbp zzbpVar = null;
        try {
            if (!zzaX(30000L)) {
                zzaI(externalOfferReportingDetailsListener, zzcj.zzj, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzz) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    zzaI(externalOfferReportingDetailsListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    long j = this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime;
                    String str2 = this.zzc;
                    String str3 = this.zzd;
                    long jLongValue = this.zzI.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, str2, str3, jLongValue);
                    bundle.putLong("appInstallTimeMillis", j);
                    zzamVar.zzl(22, packageName, bundle, new zzbh(externalOfferReportingDetailsListener, this.zzh, this.zzm, zzbpVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support external offer.");
                zzaI(externalOfferReportingDetailsListener, zzcj.zzt, zzie.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaI(externalOfferReportingDetailsListener, zzcj.zzj, zzie.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaI(externalOfferReportingDetailsListener, zzcj.zzh, zzie.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final /* synthetic */ Void zzaz(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        zzbp zzbpVar = null;
        try {
            if (!zzaX(30000L)) {
                zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzj, zzie.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzy) {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzamVar.zzp(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzg(this.zzc, this.zzd, this.zzI.longValue()), new zzbl(alternativeBillingOnlyAvailabilityListener, this.zzh, this.zzm, zzbpVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current client doesn't support alternative billing only.");
                zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzD, zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzj, zzie.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaF(alternativeBillingOnlyAvailabilityListener, zzcj.zzh, zzie.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    public final zzcw zzba(int i, BillingResult billingResult, zzie zzieVar, String str, Exception exc) {
        zzbf(zzieVar, 9, billingResult, zzcg.zza(exc));
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", str, exc);
        return new zzcw(billingResult, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0165 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.billingclient.api.zzcw zzbb(java.lang.String r17, boolean r18, int r19) {
        /*
            Method dump skipped, instruction units count: 550
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.zzbb(java.lang.String, boolean, int):com.android.billingclient.api.zzcw");
    }

    public final void zzbc(BillingResult billingResult, zzie zzieVar, int i) {
        zzib zzibVar = null;
        zzhx zzhxVar = null;
        if (billingResult.getResponseCode() == 0) {
            int i2 = zzcg.zza;
            try {
                zzhz zzhzVarZzc = zzib.zzc();
                zzhzVarZzc.zzo(5);
                zziw zziwVarZzc = zziz.zzc();
                zziwVarZzc.zza(i);
                zzhzVarZzc.zzl((zziz) zziwVarZzc.zze());
                zzibVar = (zzib) zzhzVarZzc.zze();
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", e);
            }
            zzaQ(zzibVar);
            return;
        }
        int i3 = zzcg.zza;
        try {
            zzhv zzhvVarZzc = zzhx.zzc();
            zzic zzicVarZzc = zzig.zzc();
            zzicVarZzc.zzo(billingResult.getResponseCode());
            zzicVarZzc.zzl(billingResult.getDebugMessage());
            zzicVarZzc.zzn(zzieVar);
            zzhvVarZzc.zzl(zzicVarZzc);
            zzhvVarZzc.zzp(5);
            zziw zziwVarZzc2 = zziz.zzc();
            zziwVarZzc2.zza(i);
            zzhvVarZzc.zzm((zziz) zziwVarZzc2.zze());
            zzhxVar = (zzhx) zzhvVarZzc.zze();
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", e2);
        }
        zzaO(zzhxVar);
    }

    public final void zzbd(zzie zzieVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzcg.zza;
            zzaO(zzcg.zzb(zzieVar, i, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbe(zzie zzieVar, int i, BillingResult billingResult, long j) {
        try {
            int i2 = zzcg.zza;
            try {
                this.zzh.zzc(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.zzm, j);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    public final void zzbf(zzie zzieVar, int i, BillingResult billingResult, String str) {
        try {
            int i2 = zzcg.zza;
            zzaO(zzcg.zzb(zzieVar, i, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbg(zzie zzieVar, int i, BillingResult billingResult, long j, boolean z) {
        try {
            int i2 = zzcg.zza;
            zzaP(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbh(zzie zzieVar, int i, BillingResult billingResult, String str, long j, boolean z) {
        try {
            int i2 = zzcg.zza;
            zzaP(zzcg.zzb(zzieVar, 2, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbi(int i) {
        try {
            int i2 = zzcg.zza;
            zzaQ(zzcg.zzc(i, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public final zzbo zzg(QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzbt zzbtVarZza = queryProductDetailsParams.zza();
        int size = zzbtVarZza.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList<QueryProductDetailsParams.Product> arrayList3 = new ArrayList(zzbtVarZza.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList4.add(((QueryProductDetailsParams.Product) arrayList3.get(i3)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = this.zzc;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    return zzao(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                }
                boolean z = this.zzw && this.zzD.isEnabledForPrepaidPlans();
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                Bundle bundleZzj = zzamVar.zzj(true != this.zzx ? 17 : 20, this.zzg.getPackageName(), strZzb, bundle, com.google.android.gms.internal.play_billing.zzc.zzf(str, this.zzd, arrayList3, null, null, com.google.android.gms.internal.play_billing.zza.zza(z, true, false, true, false, true), this.zzI.longValue()));
                if (bundleZzj == null) {
                    return zzao(zzcj.zzB, zzie.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!bundleZzj.containsKey("DETAILS_LIST")) {
                    int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzj, "BillingClient");
                    String strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundleZzj, "BillingClient");
                    if (iZzb == 0) {
                        return zzao(zzcj.zza(6, strZzj), zzie.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                    }
                    return zzao(zzcj.zza(iZzb, strZzj), zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb, null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return zzao(zzcj.zzB, zzie.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i4));
                        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e) {
                        return zzao(zzcj.zza(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 == null) {
                        for (QueryProductDetailsParams.Product product : arrayList3) {
                            Iterator it = arrayList5.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put(InAppPurchaseMetaData.KEY_PRODUCT_ID, product.zza()).put("type", product.zzb()).put("statusCode", 0).toString()));
                                    break;
                                }
                                ProductDetails productDetails2 = (ProductDetails) it.next();
                                if (!product.zza().equals(productDetails2.getProductId()) || !product.zzb().equals(productDetails2.getProductType())) {
                                }
                            }
                        }
                    } else {
                        Iterator<String> it2 = stringArrayList2.iterator();
                        while (it2.hasNext()) {
                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(it2.next());
                            com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i = i2;
                } catch (JSONException e2) {
                    return zzao(zzcj.zza(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e2);
                }
            } catch (DeadObjectException e3) {
                return zzao(zzcj.zzj, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            } catch (Exception e4) {
                return zzao(zzcj.zzh, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e4);
            }
        }
        return new zzbo(0, "", arrayList, arrayList2);
    }

    public final zzch zzj() {
        return this.zzh;
    }

    public final BillingResult zzm(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zze.post(new Runnable() { // from class: com.android.billingclient.api.zzac
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzP(this.zza, billingResult);
            }
        });
        return billingResult;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public BillingResult showAlternativeBillingOnlyInformationDialog(final Activity activity, final AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzaW(3000L)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzcj.zzj;
            zzbd(zzieVar, 16, billingResult);
            return billingResult;
        }
        if (!this.zzy) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current Play Store version doesn't support alternative billing only.");
            zzie zzieVar2 = zzie.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED;
            BillingResult billingResult2 = zzcj.zzD;
            zzbd(zzieVar2, 16, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzay zzayVar = new zzay(this, handler, alternativeBillingOnlyInformationDialogListener);
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzy
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzz(this.zza, alternativeBillingOnlyInformationDialogListener, activity, zzayVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzz
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaM(alternativeBillingOnlyInformationDialogListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzF()) != null) {
            return zzcj.zzi;
        }
        BillingResult billingResultZzaq = zzaq();
        zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 16, billingResultZzaq);
        return billingResultZzaq;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public BillingResult showExternalOfferInformationDialog(final Activity activity, final ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzaW(3000L)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzcj.zzj;
            zzbd(zzieVar, 25, billingResult);
            return billingResult;
        }
        if (!this.zzz) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Current Play Store version doesn't support external offer.");
            zzie zzieVar2 = zzie.EXTERNAL_OFFER_NOT_SUPPORTED;
            BillingResult billingResult2 = zzcj.zzt;
            zzbd(zzieVar2, 25, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzaz zzazVar = new zzaz(this, handler, externalOfferInformationDialogListener);
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzan
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzB(this.zza, externalOfferInformationDialogListener, activity, zzazVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzao
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaK(externalOfferInformationDialogListener, zzcj.zzk, zzie.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzF()) != null) {
            return zzcj.zzi;
        }
        BillingResult billingResultZzaq = zzaq();
        zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 25, billingResultZzaq);
        return billingResultZzaq;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        zzaU(billingClientStateListener, 0);
    }

    public BillingClientImpl(Context context, PendingPurchasesParams pendingPurchasesParams, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, UserChoiceBillingListener userChoiceBillingListener, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = Long.valueOf(new Random().nextLong());
        this.zzJ = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.zzc = str;
        this.zzd = zzaw();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, str, (zzch) null, builder);
    }

    public BillingClientImpl(String str, Context context, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzI = lValueOf;
        this.zzJ = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.zzc = "8.0.0";
        String strZzaw = zzaw();
        this.zzd = strZzaw;
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs("8.0.0");
        if (strZzaw != null) {
            zziqVarZzc.zzt(strZzaw);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(lValueOf.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    public final void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, UserChoiceBillingListener userChoiceBillingListener, String str, zzch zzchVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zziqVarZzc.zzt(str2);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(this.zzI.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        if (zzchVar != null) {
            this.zzh = zzchVar;
        } else {
            this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzs(this.zzg, purchasesUpdatedListener, null, null, userChoiceBillingListener, this.zzh);
        this.zzD = pendingPurchasesParams;
        this.zzF = userChoiceBillingListener != null;
        this.zzE = builder.zza;
    }

    public BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzI = lValueOf;
        this.zzJ = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.zzc = "8.0.0";
        String strZzaw = zzaw();
        this.zzd = strZzaw;
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs("8.0.0");
        if (strZzaw != null) {
            zziqVarZzc.zzt(strZzaw);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(lValueOf.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzf = new zzs(this.zzg, null, null, null, null, this.zzh);
        this.zzD = pendingPurchasesParams;
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    public BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzb zzbVar, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = Long.valueOf(new Random().nextLong());
        this.zzJ = com.google.android.gms.internal.play_billing.zzaz.zza();
        this.zzc = "8.0.0";
        this.zzd = zzaw();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, (zzb) null, "8.0.0", (zzch) null, builder);
    }

    public BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, UserChoiceBillingListener userChoiceBillingListener, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this(context, pendingPurchasesParams, purchasesUpdatedListener, "8.0.0", null, userChoiceBillingListener, null, null, builder);
    }
}
