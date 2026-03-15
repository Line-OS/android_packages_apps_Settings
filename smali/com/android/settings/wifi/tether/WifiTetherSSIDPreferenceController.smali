.class public Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSSIDPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field static final DEFAULT_SSID:Ljava/lang/String; = "AndroidAP"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSSID:Ljava/lang/String;

.field private mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 54
    new-instance p2, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p2}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    .line 55
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private shareHotspotNetwork(Landroid/content/Intent;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$Uuc4492JmFKnNdaFNJky9fSywuI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$Uuc4492JmFKnNdaFNJky9fSywuI;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSsidDisplay(Landroidx/preference/EditTextPreference;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_name"

    return-object p0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method isQrCodeButtonAvailable()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->isQrCodeButtonAvailable()Z

    move-result p0

    return p0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$shareHotspotNetwork$1$WifiTetherSSIDPreferenceController(Landroid/content/Intent;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6b0

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$updateDisplay$0$WifiTetherSSIDPreferenceController(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->shareHotspotNetwork(Landroid/content/Intent;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 95
    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroidx/preference/EditTextPreference;)V

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "AndroidAP"

    .line 69
    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v3, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "WifiTetherSsidPref"

    const-string v1, "Invalid security to share hotspot"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    new-instance v2, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method
