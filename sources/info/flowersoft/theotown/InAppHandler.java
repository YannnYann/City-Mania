package info.flowersoft.theotown;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.pay.Information;
import com.badlogic.gdx.pay.Offer;
import com.badlogic.gdx.pay.OfferType;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import com.badlogic.gdx.pay.PurchaseObserver;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.BuildingPeopleCounter;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class InAppHandler implements PurchaseObserver {
    public static InAppHandler instance;
    public Map<String, Tuple<FeatureDraft, Setter<FeatureDraft>>> actions;
    public final SSP contentSSP = new SSP("info.flowersoft.theotown.theotown.iapcontents");
    public final SSP iapSSP = new SSP("info.flowersoft.theotown.theotown.iapbackups");
    public final List<FeatureDraft> pendingDrafts = new ArrayList();
    public JSONArray restoredPurchases;

    public static /* synthetic */ void $r8$lambda$wSh6WgBdqeR8lKt4ybJh8TXE6fc(FeatureDraft featureDraft) {
    }

    public void init() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONArray jSONArray;
        FeatureDraft buyableFeatureBySku;
        FeatureDraft featureDraft;
        SSP.Reader readerLoad = this.iapSSP.load();
        SSP.Reader readerLoad2 = this.contentSSP.load();
        this.actions = new HashMap();
        try {
            jSONObject = new JSONObject(readerLoad.getString(C3522b4.a.v, "{}"));
            jSONObject2 = new JSONObject(readerLoad2.getString(C3522b4.a.v, "{}"));
            jSONArray = new JSONArray(readerLoad.getString("pendings", "[]"));
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
            jSONObject2 = new JSONObject();
            jSONArray = new JSONArray();
        }
        String string = readerLoad.getString("pending", "");
        if (!string.isEmpty() && (featureDraft = (FeatureDraft) Drafts.get(string, FeatureDraft.class)) != null) {
            this.pendingDrafts.add(featureDraft);
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            FeatureDraft featureDraft2 = (FeatureDraft) Drafts.get(jSONArray.optString(i, ""), FeatureDraft.class);
            if (featureDraft2 != null) {
                this.pendingDrafts.add(featureDraft2);
            }
        }
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames != null) {
            for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                String strOptString = jSONArrayNames.optString(i2, null);
                if (strOptString != null && !strOptString.isEmpty() && (buyableFeatureBySku = Drafts.getBuyableFeatureBySku(strOptString)) != null) {
                    buyableFeatureBySku.token = jSONObject.optString(strOptString, buyableFeatureBySku.token);
                }
            }
        }
        PurchaseManagerConfig purchaseManagerConfig = new PurchaseManagerConfig();
        for (FeatureDraft featureDraft3 : Drafts.FEATURES) {
            String str = featureDraft3.sku;
            if (str != null && !str.isEmpty()) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(featureDraft3.sku);
                if (jSONObjectOptJSONObject != null) {
                    featureDraft3.title = jSONObjectOptJSONObject.optString(C3522b4.i.D0, featureDraft3.title);
                    featureDraft3.text = jSONObjectOptJSONObject.optString(C3522b4.i.K0, featureDraft3.text);
                    featureDraft3.microPrice = jSONObjectOptJSONObject.optInt("cents", featureDraft3.microPrice);
                    featureDraft3.formattedPrice = jSONObjectOptJSONObject.optString("formatted price", featureDraft3.formattedPrice);
                    featureDraft3.currencyCode = jSONObjectOptJSONObject.optString("currency code", featureDraft3.currencyCode);
                }
                purchaseManagerConfig.addOffer(new Offer().setIdentifier(featureDraft3.sku).setType(featureDraft3.consumable ? OfferType.CONSUMABLE : OfferType.ENTITLEMENT));
            }
        }
        TheoTown.purchaseManager.install(this, purchaseManagerConfig, true);
    }

    public final void saveIAPs() {
        String str;
        JSONObject jSONObject = new JSONObject();
        for (FeatureDraft featureDraft : Drafts.FEATURES) {
            String str2 = featureDraft.sku;
            if (str2 != null && !str2.isEmpty() && (str = featureDraft.token) != null && !str.isEmpty()) {
                try {
                    jSONObject.put(featureDraft.sku, featureDraft.token);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        SSP.Writer writerEdit = this.iapSSP.edit();
        writerEdit.putString(C3522b4.a.v, jSONObject.toString());
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.pendingDrafts.size(); i++) {
            FeatureDraft featureDraft2 = this.pendingDrafts.get(i);
            if (!featureDraft2.consumable) {
                jSONArray.put(featureDraft2.id);
            }
        }
        writerEdit.putString("pendings", jSONArray.toString());
        writerEdit.apply();
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handleInstall() {
        JSONObject jSONObject = new JSONObject();
        for (FeatureDraft featureDraft : Drafts.FEATURES) {
            String str = featureDraft.sku;
            if (str != null && !str.isEmpty()) {
                try {
                    Information information = TheoTown.purchaseManager.getInformation(featureDraft.sku);
                    if (information != Information.UNAVAILABLE) {
                        featureDraft.title = information.getLocalName();
                        featureDraft.text = information.getLocalDescription();
                        Integer priceInCents = information.getPriceInCents();
                        featureDraft.microPrice = priceInCents != null ? priceInCents.intValue() : 1;
                        featureDraft.formattedPrice = information.getLocalPricing();
                        featureDraft.currencyCode = information.getPriceCurrencyCode();
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(C3522b4.i.D0, featureDraft.title);
                            jSONObject2.put(C3522b4.i.K0, featureDraft.text);
                            jSONObject2.put("cents", featureDraft.microPrice);
                            jSONObject2.put("formatted price", featureDraft.formattedPrice);
                            jSONObject2.put("currency code", featureDraft.currencyCode);
                            jSONObject.put(featureDraft.sku, jSONObject2);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        SSP.Writer writerEdit = this.contentSSP.edit();
        writerEdit.putString(C3522b4.a.v, jSONObject.toString());
        writerEdit.apply();
        Gdx.app.debug("InAppHandler", "handleInstall");
        if (Gdx.app.getType() == Application.ApplicationType.Android) {
            restorePurchases();
        }
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handleInstallError(Throwable th) {
        Gdx.app.debug("InAppHandler", "handleInstallError");
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handleRestore(Transaction[] transactionArr) {
        int i;
        Gdx.app.debug("InAppHandler", "handleRestore");
        this.restoredPurchases = new JSONArray();
        int i2 = 0;
        for (Transaction transaction : transactionArr) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C3670j8.x, transaction.getIdentifier());
                jSONObject.put("order id", transaction.getOrderId());
                jSONObject.put("cost", transaction.getPurchaseCost());
                jSONObject.put(InAppPurchaseMetaData.KEY_CURRENCY, transaction.getPurchaseCostCurrency());
                jSONObject.put(C3522b4.i.K0, transaction.getPurchaseText());
                jSONObject.put("time", transaction.getPurchaseTime());
                jSONObject.put(C3522b4.i.U, transaction.getStoreName());
                jSONObject.put("transaction data", transaction.getTransactionData());
                jSONObject.put("data signature id", transaction.getTransactionDataSignature());
                jSONObject.put("user id", transaction.getUserId());
                this.restoredPurchases.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            FeatureDraft buyableFeatureBySku = Drafts.getBuyableFeatureBySku(transaction.getIdentifier());
            if (buyableFeatureBySku != null && transaction.isPurchased()) {
                if (transaction.getOrderId() != null) {
                    buyableFeatureBySku.token = transaction.getOrderId();
                } else {
                    buyableFeatureBySku.token = transaction.getTransactionData();
                }
            }
        }
        while (i2 < this.pendingDrafts.size()) {
            FeatureDraft featureDraft = this.pendingDrafts.get(i2);
            if (featureDraft.consumable) {
                i = i2 - 1;
                this.pendingDrafts.remove(i2);
            } else if (featureDraft.isPurchased()) {
                GameHandler.getInstance().buyFeature(featureDraft);
                i = i2 - 1;
                this.pendingDrafts.remove(i2);
            } else {
                i2++;
            }
            i2 = i;
            i2++;
        }
        saveIAPs();
    }

    public JSONArray getRestoredPurchases() {
        if (this.restoredPurchases == null) {
            restorePurchases();
        }
        return this.restoredPurchases;
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handleRestoreError(Throwable th) {
        Gdx.app.debug("InAppHandler", "handleRestoreError");
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handlePurchase(Transaction transaction) {
        FeatureDraft buyableFeatureBySku;
        Gdx.app.debug("InAppHandler", "handlePurchase");
        Tuple<FeatureDraft, Setter<FeatureDraft>> tuple = this.actions.get(transaction.getIdentifier());
        if (tuple == null && (buyableFeatureBySku = Drafts.getBuyableFeatureBySku(transaction.getIdentifier())) != null) {
            tuple = new Tuple<>(buyableFeatureBySku, new Setter() { // from class: info.flowersoft.theotown.InAppHandler$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    InAppHandler.$r8$lambda$wSh6WgBdqeR8lKt4ybJh8TXE6fc((FeatureDraft) obj);
                }
            });
        }
        if (tuple != null) {
            FeatureDraft first = tuple.getFirst();
            first.token = transaction.getOrderId();
            String str = Features.getInstance().isProbablyTestUser() ? " (TEST)" : "";
            GameHandler gameHandler = GameHandler.getInstance();
            gameHandler.buyFeature(first);
            if (first.consumable) {
                consume(first);
            }
            this.pendingDrafts.remove(first);
            saveIAPs();
            TheoTown.analytics.logEvent("IAP", "Bought IAP " + first.id + str, "Has " + gameHandler.getDiamonds() + " diamonds");
            TheoTown.gamesService.unlockAchievement("donation");
            tuple.getSecond().set(first);
            TheoTown.analytics.logPurchase(first);
            if (Drafts.BUILDING_PEOPLE_COUNTER != null) {
                Drafts.BUILDING_PEOPLE_COUNTER = new BuildingPeopleCounter();
            }
        }
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handlePurchaseError(Throwable th) {
        Gdx.app.debug("InAppHandler", "handlePurchaseError");
        if (this.actions.size() == 1) {
            this.actions.clear();
        }
        if (!this.pendingDrafts.isEmpty()) {
            List<FeatureDraft> list = this.pendingDrafts;
            list.remove(list.size() - 1);
        }
        saveIAPs();
    }

    @Override // com.badlogic.gdx.pay.PurchaseObserver
    public void handlePurchaseCanceled() {
        Gdx.app.debug("InAppHandler", "handlePurchaseCanceled");
        if (this.actions.size() == 1) {
            this.actions.clear();
        }
        if (!this.pendingDrafts.isEmpty()) {
            List<FeatureDraft> list = this.pendingDrafts;
            list.remove(list.size() - 1);
        }
        saveIAPs();
    }

    public synchronized void fetch() {
    }

    public synchronized void restorePurchases() {
        TheoTown.purchaseManager.purchaseRestore();
    }

    public synchronized boolean consume(FeatureDraft featureDraft) {
        featureDraft.token = null;
        featureDraft.lastConsumed = TimeUtils.millis();
        featureDraft.consumeCtr++;
        saveIAPs();
        return true;
    }

    public synchronized boolean requestPurchase(FeatureDraft featureDraft, Setter<FeatureDraft> setter, boolean z) {
        if (featureDraft.token == null && TheoTown.purchaseManager.installed() && featureDraft.sku != null) {
            this.pendingDrafts.add(featureDraft);
            saveIAPs();
            this.actions.put(featureDraft.sku, new Tuple<>(featureDraft, setter));
            TheoTown.purchaseManager.purchase(featureDraft.sku);
            return true;
        }
        TheoTown.runtimeFeatures.showToast("Cannot buy " + featureDraft.sku);
        TheoTown.analytics.writeToLog("" + featureDraft.token + "|" + featureDraft.sku);
        return false;
    }

    public static InAppHandler getInstance() {
        if (instance == null) {
            instance = new InAppHandler();
        }
        return instance;
    }
}
