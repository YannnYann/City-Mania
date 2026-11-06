###### Class com.ironsource.mediationsdk.AdapterNetworkData (com.ironsource.mediationsdk.AdapterNetworkData)
.class public interface abstract Lcom/ironsource/mediationsdk/AdapterNetworkData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract allData()Lorg/json/JSONObject;
.end method

.method public abstract dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract networkDataByAdUnit(Lcom/ironsource/mediationsdk/IronSource$a;)Lorg/json/JSONObject;
.end method
