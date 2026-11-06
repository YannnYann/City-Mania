###### Class ads_mobile_sdk.mv (ads_mobile_sdk.mv)
.class public final Lads_mobile_sdk/mv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lads_mobile_sdk/lv;

.field public final c:Lads_mobile_sdk/xw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/lv;Lads_mobile_sdk/xw;)V
    .registers 5

    .line 1
    const-string v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lads_mobile_sdk/mv;->a:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lads_mobile_sdk/mv;->b:Lads_mobile_sdk/lv;

    .line 174
    iput-object p3, p0, Lads_mobile_sdk/mv;->c:Lads_mobile_sdk/xw;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 176
    iget-object v0, p0, Lads_mobile_sdk/mv;->c:Lads_mobile_sdk/xw;

    if-eqz v0, :cond_f

    .line 177
    invoke-virtual {v0}, Lads_mobile_sdk/f;->c()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lads_mobile_sdk/lv;
    .registers 2

    .line 172
    iget-object v0, p0, Lads_mobile_sdk/mv;->b:Lads_mobile_sdk/lv;

    return-object v0
.end method

.method public final c()Lads_mobile_sdk/xw;
    .registers 2

    .line 174
    iget-object v0, p0, Lads_mobile_sdk/mv;->c:Lads_mobile_sdk/xw;

    return-object v0
.end method
