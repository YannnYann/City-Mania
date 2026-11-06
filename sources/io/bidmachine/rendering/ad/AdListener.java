package io.bidmachine.rendering.ad;

import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;

/* JADX INFO: loaded from: classes5.dex */
public interface AdListener<Ad> {
    void onAdAppeared(Ad ad);

    void onAdClicked(Ad ad, SystemComponent systemComponent, ClickData clickData);

    void onAdDisappeared(Ad ad);

    void onAdExpired(Ad ad);

    void onAdFailToLoad(Ad ad, Error error);

    void onAdFailToShow(Ad ad, Error error);

    void onAdFinished(Ad ad);

    void onAdLoaded(Ad ad);

    void onAdShown(Ad ad);

    void onBrokenCreativeEvent(Ad ad, BrokenCreativeEvent brokenCreativeEvent);

    void onOpenPrivacySheet(Ad ad, PrivacySheetParams privacySheetParams);

    void onViewabilityEvent(Ad ad, ActionEvent actionEvent, Error error);
}
