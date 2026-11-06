###### Class ads_mobile_sdk.wd0 (ads_mobile_sdk.wd0)
.class public abstract synthetic Lads_mobile_sdk/wd0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lads_mobile_sdk/dw2;Ljava/util/LinkedHashMap;)Lads_mobile_sdk/iu1;
    .registers 4

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p0, Lads_mobile_sdk/iu1;

    .line 4
    invoke-direct {p0, p3}, Lads_mobile_sdk/iu1;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p0
.end method
