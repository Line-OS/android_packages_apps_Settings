.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const p2, 0x1010543

    .line 58
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const p2, 0x1010038

    .line 59
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const p1, 0x7f0d0083

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    return-void

    .line 134
    :cond_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 135
    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/4 v7, 0x2

    const v8, 0x7f120527

    .line 136
    invoke-direct {p0, v1, v2, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 139
    :goto_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const-wide/32 v3, 0x80000

    .line 140
    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    .line 141
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, v1

    .line 143
    invoke-virtual {p1, p3, v1}, Lcom/android/settings/widget/UsageView;->setSideLabelWeights(FF)V

    .line 144
    iget v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const/4 p3, 0x1

    .line 145
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const p2, 0x7f120528

    invoke-direct {p0, v1, v2, p2, v6}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p3

    .line 149
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p1, v6, v5}, Lcom/android/settings/widget/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object p3, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 158
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p0, p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private toInt(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    .line 123
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/net/NetworkCycleData;

    .line 101
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v9

    .line 108
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v11

    add-long/2addr v3, v11

    .line 110
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 111
    iget-wide v11, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v11, v7, v11

    invoke-direct {p0, v11, v12}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    :cond_2
    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    const-wide/32 v6, 0x80000

    div-long v6, v3, v6

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v9, v7

    invoke-direct {p0, v9, v10}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 116
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-le p0, v6, :cond_4

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_4
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    .line 86
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz p0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 87
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 65
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0138

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    .line 67
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/widget/UsageView;->clearPaths()V

    .line 73
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 183
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 184
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 176
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 177
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 178
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
