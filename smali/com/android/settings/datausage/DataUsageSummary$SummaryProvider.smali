.class Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 263
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 264
    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-void
.end method

.method private formatFallbackData()Ljava/lang/CharSequence;
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 316
    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {p0, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 319
    :cond_1
    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatUsedData()Ljava/lang/CharSequence;
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const-string v1, "telephony_subscription_service"

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 295
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 304
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 307
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v1

    .line 308
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    .line 307
    invoke-static {v1, v2, v3, v4}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120525

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatUsedData()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v0

    .line 272
    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 276
    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->getWifiDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120535

    .line 282
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 284
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 285
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v0

    .line 286
    invoke-static {v2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 285
    invoke-virtual {v3, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
