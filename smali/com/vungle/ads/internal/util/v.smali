###### Class com.vungle.ads.internal.util.v (com.vungle.ads.internal.util.v)
.class public abstract Lcom/vungle/ads/internal/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:Lkotlin/text/Regex;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/ads/internal/util/v;->b:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    return v0
.end method

.method public static final synthetic b()Lkotlin/text/Regex;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/v;->b:Lkotlin/text/Regex;

    return-object v0
.end method
