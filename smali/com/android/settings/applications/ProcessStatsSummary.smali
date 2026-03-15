.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListPreference:Landroidx/preference/Preference;

.field private mAverageUsed:Landroidx/preference/Preference;

.field private mFree:Landroidx/preference/Preference;

.field private mPerformance:Landroidx/preference/Preference;

.field private mSummaryPref:Lcom/android/settings/SummaryPreference;

.field private mTotalMemory:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f120755

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xca

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15008c

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "status_header"

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const-string p1, "performance"

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    const-string p1, "total_memory"

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    const-string p1, "average_used"

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    const-string p1, "free"

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    const-string p1, "apps_list"

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    .line 64
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 116
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "transfer_stats"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    const-string v2, "duration_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 120
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12098e

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshUi()V
    .locals 15

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    .line 73
    iget-wide v2, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 74
    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 75
    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v8, v2

    const/4 v10, 0x1

    invoke-static {v1, v8, v9, v10}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    double-to-long v4, v4

    .line 78
    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    double-to-long v12, v6

    .line 79
    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f03008d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 82
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v13}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v13

    if-ltz v13, :cond_0

    .line 83
    array-length v14, v12

    sub-int/2addr v14, v10

    if-ge v13, v14, :cond_0

    .line 84
    aget-object v12, v12, v13

    goto :goto_0

    .line 86
    :cond_0
    array-length v13, v12

    sub-int/2addr v13, v10

    aget-object v12, v12, v13

    .line 88
    :goto_0
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v14, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 89
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    add-double/2addr v6, v2

    div-double/2addr v2, v6

    double-to-float v1, v2

    .line 91
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    invoke-virtual {v2, v1, v3, v6}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroidx/preference/Preference;

    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroidx/preference/Preference;

    invoke-virtual {v1, v11}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroidx/preference/Preference;

    invoke-static {v8, v9, v4, v5}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f10002b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v10

    .line 99
    invoke-virtual {p0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
