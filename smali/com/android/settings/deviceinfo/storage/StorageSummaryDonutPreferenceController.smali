.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageSummaryDonutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static convertUsedBytesToFormattedText(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    const p2, 0x7f120e7a

    .line 55
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v0, p2, v1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "pref_summary"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 62
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_summary"

    return-object p0
.end method

.method public invalidateData()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateBytes(JJ)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 101
    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->invalidateData()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->convertUsedBytesToFormattedText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 71
    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120e86

    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 73
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
