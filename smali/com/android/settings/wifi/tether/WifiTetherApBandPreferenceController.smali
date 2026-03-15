.class public Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApBandPreferenceController.java"


# instance fields
.field private isDualMode:Z

.field private mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private mBandSummaries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 43
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isDualMode:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries()V

    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private validateSelection(I)I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, p1, :cond_0

    return v2

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result p0

    if-nez p0, :cond_1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return p1
.end method


# virtual methods
.method public getBandIndex()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    return p0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    .line 77
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1210f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_ap_band"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 90
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Band preference changed, updating band index to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiTetherApBandPref"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const-string v1, "WifiTetherApBandPref"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 51
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v3, "Updating band index to 0 because no config"

    .line 52
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating band index to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 58
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 59
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5Ghz not supported, updating band index to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/ListPreference;

    .line 64
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const p0, 0x7f1210ef

    .line 69
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 71
    :cond_2
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method updatePreferenceEntries()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isDualMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0300b7

    const v2, 0x7f0300b8

    goto :goto_0

    :cond_0
    const v1, 0x7f0300b6

    const v2, 0x7f0300b9

    .line 126
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    return-void
.end method
