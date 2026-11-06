###### Class ads_mobile_sdk.n9 (ads_mobile_sdk.n9)
.class public final Lads_mobile_sdk/n9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/bj2;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lads_mobile_sdk/o9;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/o9;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/n9;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/n9;->d:Ljava/util/HashMap;

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/n9;->a:Lads_mobile_sdk/bj2;

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/n9;->b:Landroid/webkit/WebView;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/n9;->e:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lads_mobile_sdk/n9;->h:Lads_mobile_sdk/o9;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/n9;->g:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/n9;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/n9;
    .registers 10

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_23

    if-eqz p3, :cond_17

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_f

    goto :goto_17

    .line 84
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CustomReferenceData is greater than 256 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_17
    :goto_17
    new-instance v0, Lads_mobile_sdk/n9;

    sget-object v5, Lads_mobile_sdk/o9;->b:Lads_mobile_sdk/o9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/n9;-><init>(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/o9;)V

    return-object v0

    .line 86
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WebView is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Partner is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/n9;
    .registers 10

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_23

    if-eqz p3, :cond_17

    .line 113
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_f

    goto :goto_17

    .line 114
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CustomReferenceData is greater than 256 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_17
    :goto_17
    new-instance v0, Lads_mobile_sdk/n9;

    sget-object v5, Lads_mobile_sdk/o9;->c:Lads_mobile_sdk/o9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/n9;-><init>(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/o9;)V

    return-object v0

    .line 116
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WebView is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Partner is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/o9;
    .registers 2

    .line 303
    iget-object v0, p0, Lads_mobile_sdk/n9;->h:Lads_mobile_sdk/o9;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .line 310
    iget-object v0, p0, Lads_mobile_sdk/n9;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lads_mobile_sdk/n9;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/webkit/WebView;
    .registers 2

    .line 197
    iget-object v0, p0, Lads_mobile_sdk/n9;->b:Landroid/webkit/WebView;

    return-object v0
.end method
