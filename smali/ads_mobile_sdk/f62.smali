###### Class ads_mobile_sdk.f62 (ads_mobile_sdk.f62)
.class public final Lads_mobile_sdk/f62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/mr1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f62;->a:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/f62;->b:Lcom/google/gson/JsonObject;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
