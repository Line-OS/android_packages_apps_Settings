.class public Lcom/android/settings/network/telephony/MobileDataSlice;
.super Ljava/lang/Object;
.source "MobileDataSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    .line 70
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected static getDefaultSubscriptionId(Landroid/telephony/SubscriptionManager;)I
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 161
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private isMobileDataAvailable()Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 180
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 146
    const-class p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 134
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0801ff

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1209b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isAirplaneModeEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 92
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v5}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 93
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    .line 94
    invoke-static {v6, v0, v7, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v6

    .line 96
    invoke-static {v5, v4, v6}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 99
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    const-wide/16 v7, -0x1

    invoke-direct {v5, v6, p0, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 101
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 103
    invoke-virtual {p0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 104
    invoke-virtual {p0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 105
    invoke-virtual {p0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 106
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 102
    invoke-virtual {v5, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 107
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 112
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isAirplaneModeEnabled()Z
    .locals 2

    .line 188
    new-instance v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-string v1, "key"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/AirplaneModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result p0

    return p0
.end method

.method isMobileDataEnabled()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getDefaultSubscriptionId(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    return-void
.end method
