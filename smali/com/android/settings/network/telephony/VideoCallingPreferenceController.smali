.class public Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "VideoCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;,
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;
    }
.end annotation


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

.field mImsManager:Lcom/android/ims/ImsManager;

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 59
    new-instance p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    .line 60
    new-instance p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isVideoCallEnabled(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
    .locals 1

    .line 117
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 118
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result p0

    return p0
.end method

.method isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isImsServiceStateReady(Lcom/android/ims/ImsManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ignore_data_enabled_changed_for_video_calls"

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public on4gLteUpdated()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->register(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->unregister()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 93
    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 94
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    .line 98
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 99
    iget-object v4, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 100
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 99
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v1, :cond_2

    .line 101
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
