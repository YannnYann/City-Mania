###### Class ads_mobile_sdk.xw3 (ads_mobile_sdk.xw3)
.class public abstract Lads_mobile_sdk/xw3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Chrome/([0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/xw3;->a:Lkotlin/text/Regex;

    return-void
.end method
