###### Class com.badlogic.gdx.pay.android.googlebilling.Iso8601DurationStringToFreeTrialPeriodConverter (com.badlogic.gdx.pay.android.googlebilling.Iso8601DurationStringToFreeTrialPeriodConverter)
.class public Lcom/badlogic/gdx/pay/android/googlebilling/Iso8601DurationStringToFreeTrialPeriodConverter;
.super Ljava/lang/Object;
.source "Iso8601DurationStringToFreeTrialPeriodConverter.java"


# direct methods
.method public static convertToFreeTrialPeriod(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .registers 4

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->parse(C)Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    move-result-object p0

    .line 21
    new-instance v1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    invoke-direct {v1, v0, p0}, Lcom/badlogic/gdx/pay/FreeTrialPeriod;-><init>(ILcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;)V

    return-object v1
.end method
