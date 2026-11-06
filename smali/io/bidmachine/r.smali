###### Class io.bidmachine.InterfaceC4237r (io.bidmachine.r)
.class public interface abstract Lio/bidmachine/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v5, "IABGPP_HDR_GppString"

    const-string v6, "IABGPP_GppSID"

    const-string v0, "IABConsent_SubjectToGDPR"

    const-string v1, "IABTCF_gdprApplies"

    const-string v2, "IABConsent_ConsentString"

    const-string v3, "IABTCF_TCString"

    const-string v4, "IABUSPrivacy_String"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/r;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method
