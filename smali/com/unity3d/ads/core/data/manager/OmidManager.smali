###### Class com.unity3d.ads.core.data.manager.OmidManager (com.unity3d.ads.core.data.manager.OmidManager)
.class public interface abstract Lcom/unity3d/ads/core/data/manager/OmidManager;
.super Ljava/lang/Object;
.source "OmidManager.kt"


# virtual methods
.method public abstract activate(Landroid/content/Context;)V
.end method

.method public abstract createAdEvents(Lcom/iab/omid/library/unity3d/adsession/AdSession;)Lcom/iab/omid/library/unity3d/adsession/AdEvents;
.end method

.method public abstract createAdSession(Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;)Lcom/iab/omid/library/unity3d/adsession/AdSession;
.end method

.method public abstract createAdSessionConfiguration(Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Z)Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;
.end method

.method public abstract createHtmlAdSessionContext(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;
.end method

.method public abstract createJavaScriptAdSessionContext(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method
