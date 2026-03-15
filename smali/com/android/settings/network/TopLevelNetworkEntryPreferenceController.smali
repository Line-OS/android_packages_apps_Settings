.class public Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelNetworkEntryPreferenceController.java"


# instance fields
.field private final mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

.field private final mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

.field private final mWifiPreferenceController:Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 41
    new-instance p1, Lcom/android/settings/network/TetherPreferenceController;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    .line 43
    new-instance p1, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object p1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mWifiPreferenceController:Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 54
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121204

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120a16

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120a14

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120a15

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v5, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mWifiPreferenceController:Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 76
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
