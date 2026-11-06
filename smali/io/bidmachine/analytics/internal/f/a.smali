###### Class io.bidmachine.analytics.internal.f.C4112a (io.bidmachine.analytics.internal.f.a)
.class public final Lio/bidmachine/analytics/internal/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/f/b;


# instance fields
.field private final a:Ljava/security/KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    iput-object v0, p0, Lio/bidmachine/analytics/internal/f/a;->a:Ljava/security/KeyPairGenerator;

    return-void
.end method


# virtual methods
.method public b()Ljava/security/KeyPairGenerator;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/f/a;->a:Ljava/security/KeyPairGenerator;

    return-object v0
.end method
