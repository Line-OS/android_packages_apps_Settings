.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;
.super Ljava/lang/Object;
.source "DataUsageSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field private static final MILLIS_IN_A_DAY:J


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->MILLIS_IN_A_DAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getCycleTime(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const p1, 0x7f1202aa

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    sget-wide v2, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->MILLIS_IN_A_DAY:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const p1, 0x7f1202a9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100010

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 126
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getDataUsageText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const/16 p1, 0xa

    invoke-static {v0, v1, v2, p1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 110
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v3, 0x1030042

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    .line 111
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f120538

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v0, v1, v3

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f120536

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/datausage/DataUsageSummary;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 94
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->DATA_USAGE_SLICE_URI:Landroid/net/Uri;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f08023e

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f120526

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 71
    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    .line 73
    new-instance v3, Landroidx/slice/builders/ListBuilder;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->DATA_USAGE_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 77
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 78
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->getDataUsageText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->getCycleTime(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 82
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 79
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f120a72

    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 86
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 84
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 88
    :goto_0
    invoke-virtual {v3}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 61
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->DATA_USAGE_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
