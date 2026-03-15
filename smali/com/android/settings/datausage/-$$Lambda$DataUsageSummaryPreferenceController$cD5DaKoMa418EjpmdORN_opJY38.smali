.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$cD5DaKoMa418EjpmdORN_opJY38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$cD5DaKoMa418EjpmdORN_opJY38;->f$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$cD5DaKoMa418EjpmdORN_opJY38;->f$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->lambda$refreshDataplanInfo$0$DataUsageSummaryPreferenceController(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
